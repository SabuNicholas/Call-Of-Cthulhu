package com.tulun.src1;

import java.util.Scanner;
class Point{//******存放坐标
    private int x;
    private int y;
    public void getPoint(int x,int y){
        this.x=x;
        this.y=y;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

}
class  SeqStqck{//******一个栈，存放路径
    Point way[];
    int top;//栈顶指针
    int maxsize;//栈最大容量
    public void getSeqStqck(int x){
        maxsize=x;
        way=new Point[maxsize];
        top=-1;
    }
    public  void push_SeqStqck(int x,int y){//*****入栈
        way[++top]=new Point();
        way[top].getPoint(x,y);
    }
    public void pop_SeqStqckk(){//********出栈
        top--;
    }
}
class Maze extends SeqStqck{
    private int arr[][];
    private int a;
    private int b;

    public Maze(){//*****初始化迷宫
        System.out.println("请输入古城的行数和列数：");
        Scanner scanner=new Scanner(System.in);
        a=scanner.nextInt();
        b=scanner.nextInt();
        super.getSeqStqck(a*b);//******因为用super调用父类的构造方法，必须放在第一条语句，所以另写了一个方法
        System.out.println("请输入迷宫的（0代表可以走，1代表不可以走）：");
        arr=new int[a][];
        for(int i=0;i<arr.length;i++){
            arr[i]=new int[b];
            for(int j=0;j<arr[0].length;j++){
                arr[i][j]=scanner.nextInt();
            }
        }
    }
    public boolean searchWay(){
        System.out.println("正在逃离旧日支配者的古城：");
        int i=0,j=0;
        int temp_x=0,temp_y=0;//******上一个节点的坐标，节点再寻找下一个可走节点时，不能寻找来源节点
        if(arr[i][i]==1)
          return false;
        else{
            super.push_SeqStqck(i,j);
            arr[i][j]=2;
            while(true){
                if(i==a-1&&j==b-1&&arr[i][j]==2){//循环出口：判断是否走到右下脚出口
                   return true;
                }
                int flag=0;//*****判断本次是否进行了向下、向右....等的操作
                if((i+1)<arr.length&&arr[i+1][j]==0){  //***向下
                    super.push_SeqStqck(i+1,j);//节点存入路径
                    arr[i+1][j]=2;
                    i++;
                    flag=1;
                    continue;
                }
                if((j+1)<arr[i].length&&arr[i][j+1]==0){  //***向右
                    super.push_SeqStqck(i,j+1);
                    arr[i][j+1]=2;
                    j++;
                    flag=1;
                    continue;
                }
                if((i-1)>=0&&arr[i-1][j]==0&&i-1!=temp_x&&j!=temp_y){     //***向上
                    super.push_SeqStqck(i-1,j);
                    arr[i-1][j]=2;
                    i--;
                    flag=1;
                    continue;
                }
                if((j-1)>=0&&arr[i][j-1]==0&&i!=temp_x&&j-1!=temp_y){  //***向左
                    super.push_SeqStqck(i,j-1);
                    arr[i][j-1]=2;
                    j--;
                    flag=1;
                    continue;
                }
                if(flag==0){//******flag=0时，此节点为死节点，找不到下一个有效节点。这时从路径中删除此节点，回到上一个节点
                    if(i==0&&j==0)
                        return false;//如果此节点是入口节点，结束，无有效路径
                    else{
                        arr[i][j]=-1;//****给此节点赋值-1，终结这条路径
                        this.pop_SeqStqckk();  // 路径中删除此节点
                        i=way[top].getX();//   回到上一个节点
                        j=way[top].getY();
                    }
                }



            }
        }

    }
    public void  put(){
        for(int i=0;i<arr.length;i++)
        {
            for(int j=0;j<arr[i].length;j++){
                if(arr[i][j]==-1)
                    arr[i][j]=0;
                System.out.print(arr[i][j]+" ");
            }
            System.out.println();
        }

    }

}
public class TestworkMaze {
    public static void main(String[] args){
        Maze maze=new Maze();
        boolean flag=maze.searchWay();
        if(flag)
        {
            System.out.println("路径已找到，你成功从拉莱耶逃出生天");
            maze.put();
          //  maze.printlf();
        }
        else
            System.out.println("无路可逃，克苏鲁的低语把你bb疯了");


    }
}

# Call-of-Cthulhu
