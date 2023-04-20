package com.tdkj.tdcloud.admin.util;

import org.springframework.stereotype.Component;


@Component
public class ChineseNumber {

	private static String[] NUMBER1 = {"零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖"};
	private static String[] NUMBER2 = {"零", "拾", "佰", "仟", "万", "亿"};

	/**
	 * @param num
	 * @return
	 * @Description:将数字转化为大写
	 */
	public static String getNumberStr(int num) {
		if (num < 0) {
			return "";
		}
		if (num == 0) {
			return NUMBER1[0];
		}
		int split = 10000;
		int y = num / (split * split);
		int w = (num / split) % split;
		int g = num % split;
		StringBuffer sb = new StringBuffer();
		//亿
		if (y > 0) {
			sb.append(getNumberStr1000(y));
			sb.append(NUMBER2[5]);
		}
		//万
		if (w > 999) {
			sb.append(getNumberStr1000(w));
			sb.append(NUMBER2[4]);
		} else {
			if (w > 0) {
				if (y != 0) {
					sb.append(NUMBER2[0]);
				}
				sb.append(getNumberStr1000(w));
				sb.append(NUMBER2[4]);
			}
		}
		//万以下
		if (g > 0) {
			if (w != 0) {
				if (g > 999) {
					sb.append(getNumberStr1000(g));
				} else {
					sb.append(NUMBER2[0]);
					sb.append(getNumberStr1000(g));
				}

			} else {
				if (y != 0) {
					sb.append(NUMBER2[0]);
				}
				sb.append(getNumberStr1000(g));
			}
		}
		return sb.toString();
	}

	/**
	 * @param num
	 * @return
	 * @Description:对万以下的数字进行大小写转化
	 */
	private static String getNumberStr1000(int num) {
		if (num > 9999 || num < 0) {
			return "";
		}
		int q = num / 1000;
		int b = (num / 100) % 10;
		int s = (num / 10) % 10;
		int g = num % 10;
		StringBuffer sb = new StringBuffer();
		//千
		if (q > 0) {
			sb.append(NUMBER1[q]);
			sb.append(NUMBER2[3]);
		}
		//百
		if (b > 0) {
			sb.append(NUMBER1[b]);
			sb.append(NUMBER2[2]);
		} else {
			if (q != 0) {
				sb.append(NUMBER2[0]);
			}
		}
		//十
		if (s > 0) {
			sb.append(NUMBER1[s]);
			sb.append(NUMBER2[1]);
		} else {
			if (b != 0) {
				sb.append(NUMBER2[0]);
			}
		}
		//个
		if (g > 0) {
			sb.append(NUMBER1[g]);
		}
		return sb.toString();
	}

	public static void main(String[] args) {
		String numberStr = getNumberStr(13213);
		System.out.println("--------------"+numberStr);
	}
}




