package com.cl.test;
import java.util.Random;
import java.util.Scanner;
public class Rd {
	public static void main(String[] args) {
		System.out.println("接下来进行.rd判定");//提示信息
		Scanner cl=new Scanner(System.in);//引入Scanner类（用来接收用户输入信息），只需引入一次即可
		System.out.println("请输入1.大（4-6点）、2.小（1-3点）");//提示信息
		int a=cl.nextInt();//用整型的变量a来接收用户输入的值；
		if (a<=0 && a>=3) {//判读用户输入的是否为1或2
			System.out.println("输入错误");//提示信息
			return;//如果不是就返回
		}
		Random x=new Random();//引入random类(用来生成随机数)
		int b=x.nextInt(6)+1;//生成一个1-6的随机数；
		System.out.println("随机生成的点数为："+b);//提示信息
		int c=0;//声明一个整型变量c；用来判断输赢
		if (b>3) {
			c=1;
		}else if (b<4) {
			c=2;
		}
		if (a==c) {//判断输赢
			System.out.println("大成功，你手刃了克苏鲁，最强！");
		}else {
			System.out.println("那你大失败了，深潜者带着你的脑子下海了");
		}
			
	}
}

# Call-Of-Cthulhu
# Call-Of-Cthulhu
# Call-Of-Cthulhu
 Call-Of-Cthulhu
# Call-of-Cthulhu
