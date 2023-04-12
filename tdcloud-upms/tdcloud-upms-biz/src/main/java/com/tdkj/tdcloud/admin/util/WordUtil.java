package com.tdkj.tdcloud.admin.util;


import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.Version;
import org.apache.commons.lang3.text.WordUtils;
import org.springframework.stereotype.Component;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.Map;

@Component
public class WordUtil {

	/**
	 * 存放模板的目录
	 */
//	@Value("${word2pdf.templatePath}")
//	private String templatePath;

	/**
	 * 生成 word 文档方法
	 *
	 * @param dataMap      要填充的数据
	 * @param templateName 模版名称.ftl (只有名称)
	 * @param fileName     要输出的文件路径 xxx/xxx/xxx.doc
	 * @throws Exception 抛出的异常
	 */
	public void createWord(Map<String, Object> dataMap, String templateName, String fileName) throws Exception {
		// 设置FreeMarker的版本和编码格式
		Configuration configuration = new Configuration(new Version("2.3.28"));
		configuration.setDefaultEncoding("UTF-8");
		// 设置FreeMarker生成Word文档所需要的模板的路径
		//configuration.setDirectoryForTemplateLoading(new File("/templates/word/"));
		// 此处把模版文件都放在 resources 下的 templates 中
		configuration.setClassForTemplateLoading(WordUtils.class, "/templates/word");

		// 设置FreeMarker生成Word文档所需要的模板
		Template tem = configuration.getTemplate(templateName, "UTF-8");
		// 创建一个Word文档的输出流
		Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(fileName)), StandardCharsets.UTF_8));
		// FreeMarker使用Word模板和数据生成Word文档
		tem.process(dataMap, out);
		out.flush();
		out.close();
	}
}

