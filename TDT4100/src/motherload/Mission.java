public class Mission{
	public int minarray[],quantity[],number,bonus;
	boolean complete;
	//private int xarr[]={543,568,594,619,645,671,696,722,747,772};
	//private int yarr[]={473,473,473,474,474,479,481,484,489,492};
	public Mission(int depth){
		complete=false;
		minarray=new int[10];
		quantity=new int[10];
		int ex0=1,ex1=6,q0=1,q1=3;
		number=(int)(Math.random()*3+3);
		if(depth<=70){
			ex1=7;number=(int)(Math.random()*4+3);
			q0=1;q1=3;
		}
		else if(depth==100 || depth==110){
			ex1=8;number=(int)(Math.random()*4+4);
			q0=1;q1=4;
		}
		else if(depth==150){
			ex0=1;ex1=9;number=(int)(Math.random()*4+4);
			q0=2;q1=4;
		}
		else if(depth==390){
			number=(int)(Math.random()*5+4);
			ex0=3;ex1=12;q0=2;q1=4;
		}
		else if(depth==590){
			number=(int)(Math.random()*5+5);
			ex0=5;ex1=17;q0=4;q1=8;
		}
		else if(depth==790){
			number=(int)(Math.random()*5+5);
			ex0=8;ex1=18;q0=5;q1=10;
		}
		else if(depth==996){
			number=(int)(Math.random()*5+5);
			ex0=10;ex1=20;q0=5;q1=10;
		}
		else if(depth==1190 || depth==1300){
			number=(int)(Math.random()*2+4);
			ex0=13;ex1=19;q0=4;q1=8;
		}
		else if(depth==1500 || depth==1700){
			number=(int)(Math.random()*1+2);
			ex0=32;ex1=35;q0=4;q1=8;
		}
		else if(depth>1700 && depth<10000){
			number=(int)(Math.random()*3+6);
			ex0=32;ex1=42;q0=3;q1=8;
		}
		for(int i=0;i<number;i++){
			minarray[i]=(int)(Math.random()*(ex1-ex0)+ex0);
			boolean rept=true;
			while(rept==true){
				rept=false;
				for(int j=0;j<i;j++)if(minarray[i]==minarray[j]){
					minarray[i]=(int)(Math.random()*(ex1-ex0)+ex0);
					rept=true;	break;
				}
			}
			quantity[i]=(int)(Math.random()*(q1-q0)+q0);
		}
		int amount=0;
		for(int i=0;i<number;i++)
			amount+=quantity[i]*StatHolder.getPrice(minarray[i]);
		amount=amount*3;
		bonus=(amount/100)*100;
		if(amount<500)bonus=500;
	}		// end constructor
	public boolean isCompleted(){
		for(int i=0;i<number;i++){
			if(quantity[i]>0){complete=false;return false;}
		}
		complete=true;
		return true;
	}
	public int getBonus(){ return bonus;}
	public void update(byte minerals[]){
		for(int i=0;i<number;i++){
			for(int j=1;j<42;j++)if(minarray[i]==j){
				//quantity[i]-=(int)minerals[j];
				if(quantity[i]<0)quantity[i]=0;
				break;
			}
		}
	}
	public void update(int min){		
		for(int i=0;i<number;i++)if(minarray[i]==min){			
			quantity[i]--;break;				
		}
	}
	public String makeString(byte minerals[]){
		String msg1="Collect the following minerals and get\n"+
			"$"+makeString(bonus)+" bonus.\n";
		update(minerals);
		for(int i=0;i<number;i++)
			msg1+=""+quantity[i]+" "+StatHolder.getName(minarray[i])+"\n";
		return msg1;
	}
	private String makeString(int num){
		String str=""+num,str2="";
		int idx=0;
		for(int i=str.length()-1;i>=0;i--){
			str2+=str.charAt(i);idx++;
			if(idx%3==0){idx=0;str2+=",";}
		}
		str="";
		for(int i=str2.length()-1;i>=0;i--)
			str+=str2.charAt(i);
		if(str.charAt(0)==',')str=str.substring(1,str.length());
		return str;
	}
}