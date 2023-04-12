package com.tdkj.tdcloud.admin.util;

import java.io.File;
import java.io.IOException;

public class MyPathUitls {

    /**
     * 获取项目所在路径
     * 并设定所有上传的文件都存与“upload”文件夹下
     * @return
     */
    public static String getRealPath() {
        File directory = new File("");// 参数为空
        String courseFile = null;
        try {
            courseFile = directory.getCanonicalPath() + "\\";
            if (courseFile.endsWith("\\")) {
                courseFile = courseFile.replaceAll("\\\\", "/");
            }
            courseFile = courseFile + "upload/";

            //判断文件父目录(upload)是否存在
            File dest = new File(courseFile + "mkdir");
            if (!dest.getParentFile().exists()) {
                dest.getParentFile().mkdir();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return courseFile;
    }

    /**
     * 会员二维码
     */
    public static String getQRCodePath() {
        String realPath = getRealPath() + "customer/";
        //判断文件父目录(customer)是否存在
        File dest = new File(realPath + "mkdir");
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdir();
        }
        return realPath;
    }

    /**
     *
     */
    public static String getPdfFilePath() {
        String realPath = getRealPath() + "pdfFile/";
        //判断文件父目录(pdfFile)是否存在
        File dest = new File(realPath + "mkdir");
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdir();
        }
        return realPath;
    }

    public static void main(String[] args) {
        System.out.println(getQRCodePath());
    }

}
