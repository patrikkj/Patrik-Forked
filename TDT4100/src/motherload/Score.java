class Score{
	public int id,score,mtime;
	public String name,ltime,date,etime,extra,ip,MST;
	public Score(int id1,String name1,int score1,int mtime1,String date1,String ltime1,
		String ip1,String etime1,String extra1){
		id=id1;name=name1;score=score1;date=date1;etime=etime1;mtime=mtime1;ip=ip1;
		extra=extra1;ltime=ltime1;
		MST="";
		int minutes=(mtime/1000)%60,hours=(mtime/60000)%24,days=mtime/1440000;
		MST+=(""+days+":");
		if(hours>9)MST+=hours;
		else MST+="0"+hours;
		if(minutes>9)MST+=":"+minutes;
		else MST+=":0"+minutes;
	}
}