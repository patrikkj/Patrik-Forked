import ham90mack.JSound;
import java.io.*;
public class Sound{
	private OggClip ogg;
	private MidiSound mid;
	private JSound clip;
	private String arr[]=new String[1];
	private int mode;	// 1 - ogg, 2 - mid, 3 - wav
	public Sound(String filename){
		mode=-1;
		if(filename.indexOf(".ogg")>-1){
			try{
				mode=1;
				ogg=new OggClip(filename);
			}	catch(IOException ex){}
		}
		else if(filename.indexOf(".mid")>-1){
			mode=2;
			mid=new MidiSound(filename);
		}
		else if(filename.indexOf(".wav")>-1 || filename.indexOf(".au")>-1){
			mode=3;
			arr[0]=filename;clip=new JSound(arr);
		}
	}
	public void play(){
		if(mode==1)ogg.play();
		else if(mode==2)mid.play();
		else if(mode==3)clip.playLib(0);
	}
	public void loop(){
		if(mode==1)ogg.loop();
		else if(mode==2)mid.loop();
		else if(mode==3)clip.loopLib(0);
	}
	public void stop(){
		if(mode==1)ogg.stop();
		else if(mode==2)mid.stop();
		else if(mode==3)clip.stopAll();
	}
	public String print(){
		if(mode==2)return ""+mid.sequencer.getMicrosecondPosition();
		return "";
	}
}