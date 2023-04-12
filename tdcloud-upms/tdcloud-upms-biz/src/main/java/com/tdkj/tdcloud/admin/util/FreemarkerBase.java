package com.tdkj.tdcloud.admin.util;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Map;

public class FreemarkerBase {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
    private Configuration configuration = null;

//	@Autowired
//	WordUtil wordUtil;
//	@Autowired
//	Word2PdfUtil word2PdfUtil;

    /**
     * 获取freemarker的配置. freemarker本身支持classpath,目录和从ServletContext获取.
     */
    protected Configuration getConfiguration() {
        if (null == configuration) {
            configuration = new Configuration(Configuration.VERSION_2_3_28);
            configuration.setDefaultEncoding("utf-8");
            //ftl是放在classpath下的一个目录
            configuration.setClassForTemplateLoading(this.getClass(), "/templates/word/");
        }
        return configuration;
    }


    /**
     * 导出word
     *
     * @param response
     * @param templateName
     * @param dataMap
     */
    public void downLoad(HttpServletResponse response, String templateName, Map<String, Object> dataMap) throws IOException {
        OutputStream os = response.getOutputStream();
        Writer writer = new OutputStreamWriter(os, "utf-8");
        Template template = null;
        try {
            template = getConfiguration().getTemplate(templateName, "utf-8");
            template.process(dataMap,writer);

            os.flush();
            writer.close();
            os.close();
        } catch (TemplateException e) {
            logger.error("模板文件异常，请检查模板文件路径和文件名：" + e.getMessage());
        } catch (IOException e) {
            logger.error("IO异常，导出到浏览器出错:" + e.getMessage());
        }
    }

	/**
	 * 生成pdf
	 *
	 * @param map              数据
	 * @param response         返回流
	 * @param templateFileName 模板名称
	 */

	public void word2pdf(Map<String, Object> map, HttpServletResponse response, String templateFileName,String wordFileName,String pdfFileName) {
		long start = System.currentTimeMillis();
		try {
			// word与pdf的随机文件名
			///String tmpFile = "/java/" + File.separator + UUID.randomUUID().toString();
			//String wordFileName = tmpFile + ".docx";
//			String wordFileName = "C:\\java/dasdasdsfsdfs.docx";
//			//String pdfFileName = tmpFile + ".pdf";
//			String pdfFileName = "C:\\java/测试.pdf";
			WordUtil wordUtil = new WordUtil();
			// 生成word
			wordUtil.createWord(map, templateFileName, wordFileName);
			// 生成pdf
			Word2PdfUtil word2PdfUtil = new Word2PdfUtil();
			Boolean flag = word2PdfUtil.word2pdf(wordFileName, pdfFileName);

			if (flag) {
				byte[] buf = new byte[8 * 1024];
				int len = 0;
				try (InputStream is = new FileInputStream(pdfFileName); OutputStream os = response.getOutputStream();) {
					while ((len = is.read(buf, 0, buf.length)) != -1) {
						os.write(buf, 0, len);
					}
					os.flush();
				} finally {
					try {
						deleteFile(wordFileName);
						deleteFile(pdfFileName);
					} catch (Exception e) {
					}
				}
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		long end = System.currentTimeMillis();
		System.out.println("pdf转换成功，共耗时：" + +(end - start) / 1000.0);
	}

	/**
	 * 删除文件
	 *
	 * @param filePath 文件
	 * @return
	 */
	public static boolean deleteFile(String filePath) {
		boolean flag = false;
		File file = new File(filePath);
		// 路径为文件且不为空则进行删除
		if (file.isFile() && file.exists()) {
			file.delete();
			flag = true;
		}
		return flag;
	}

}
