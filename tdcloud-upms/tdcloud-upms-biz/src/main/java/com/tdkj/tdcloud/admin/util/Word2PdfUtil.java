package com.tdkj.tdcloud.admin.util;

import cn.hutool.system.OsInfo;
import cn.hutool.system.SystemUtil;
import com.aspose.words.Document;
import com.aspose.words.FontSettings;
import com.aspose.words.License;
import com.aspose.words.SaveFormat;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 * 使用Aspose将word转成pdf
 *
 * @author sunhongyun
 */
@Slf4j
@Component
public class Word2PdfUtil {
	/**
	 * 破解方法
	 * 需要jar包: aspose-words-15.12.0-jdk16.jar
	 * 同时配置 license.xml
	 *
	 * @return
	 */
	private static boolean getLicense() {
		boolean result = false;
		try {
			InputStream is = new ClassPathResource("/license.xml").getInputStream();
			License aposeLic = new License();
			aposeLic.setLicense(is);
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * word 转 pdf
	 *
	 * @param inputPath word文件path(全路径)
	 * @param outPath   pdf文件path(全路径)
	 * @return
	 */
	public Boolean word2pdf(String inputPath, String outPath) {
		try (FileOutputStream os = new FileOutputStream(outPath)) {
			if (getLicense()) {
				OsInfo osInfo = SystemUtil.getOsInfo();
				if(osInfo.isLinux()){
					FontSettings.setFontsFolder(File.separator + "usr"
							+ File.separator + "share" + File.separator + "fonts" +File.separator + "chineseFonts", true);
				}
				Document doc = new Document(inputPath);

				doc.save(os, SaveFormat.PDF);
				return true;
			}
			log.error("转换失败!", "破解失败");
			return false;
		} catch (Exception e) {
			log.error("转换失败!", e);
			return false;
		}
	}
}

