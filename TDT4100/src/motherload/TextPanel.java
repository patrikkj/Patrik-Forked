import java.awt.Graphics;
public class TextPanel{
	private String lines[]=new String[20];
	private int x,y,width,linecount,step;
	public TextPanel(String msg,int x1,int y1,int w,int s){
		x=x1;y=y1;width=w;step=s;
		int begin=0;
		linecount=0;
		for(int i=0;i<msg.length();i++)if(msg.charAt(i)==' '){
			int length=i-begin;
			if(length>w-5){
				lines[linecount]=msg.substring(begin,i);
				linecount++;	begin=i+1;
			}
		}
		lines[linecount]=msg.substring(begin,msg.length());
		linecount++;		
	}
	public void addLine(String msg){
		lines[linecount]=msg;linecount++;
	}
	public void draw(Graphics g){
		for(int i=0;i<linecount;i++)
			g.drawString(lines[i],x,y+i*step);
	}
}