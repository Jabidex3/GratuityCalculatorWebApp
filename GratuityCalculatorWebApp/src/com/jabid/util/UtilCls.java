package com.jabid.util;

import java.text.DecimalFormat;

public class UtilCls {

	public boolean chkBill(String amt) {
		try {
			double x = Double.valueOf(amt);
			if(x>0) {
				return true;
			}
			else {
				return false;
			}
		}
		catch(Exception e) {
			return false;
		}
	}
	
	public boolean chkPpl(String amt) {
		try {
			int x = Integer.valueOf(amt);
			if(x>0) {
				return true;
			}
			else {
				return false;
			}
		}
		catch(Exception e) {
			return false;
		}
	}
	
	public boolean chkTip(String amt) {
		try {
			double x = Double.valueOf(amt);
			if(x>=0) {
				return true;
			}
			else {
				return false;
			}
		}
		catch(Exception e) {
			return false;
		}
	}
	
	public String tip(double billAmt, double percentage, int ppl) {
		DecimalFormat df = new DecimalFormat("0.00");
		double input = billAmt * (percentage/100)/ppl;
		return df.format(input);

	}
}
