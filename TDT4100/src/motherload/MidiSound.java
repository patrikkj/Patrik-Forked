import javax.sound.sampled.*;
import java.io.*;
import javax.sound.midi.*;
import java.net.*;
public class MidiSound implements MetaEventListener{
	public static Sequence sequence=null; 
	public static Sequencer sequencer=null;
	public int loopcount = 0; 
	long start = 0;
	boolean allways = true; 
	URL url; 
	public MidiSound(String filepath){//Opens a midi when given a file path{
		try{
			FileInputStream fis = new FileInputStream(filepath);
			sequence = MidiSystem.getSequence(fis);
			sequencer = MidiSystem.getSequencer();
			sequencer.open();
			sequencer.setSequence(sequence);
			//System.out.println("loading "+filepath+","+sequencer.getMicrosecondLength());
			//System.out.println(sequencer.getTickLength()+","+sequencer.getTickPosition());
		}
		catch(IOException ioe){
			System.out.println("Error Reading: "+new File(filepath).getName() + " (" + ioe + ")");
		}
		catch(InvalidMidiDataException imde){
			System.out.println("\n|         Not a MIDI File         |\n");
		}
		catch(MidiUnavailableException mue){
			System.out.println("\n| MIDI Device is currently in use |\n");
		}
	}
	public void close(){
		try{
			sequencer.stop();
			sequencer.close();
			sequencer.removeMetaEventListener(this);
		}
		catch(NullPointerException npe){}
		catch(IllegalStateException ise){}
		start = 0;
		loopcount = 0;
	}
	public void play(){
		try{
			sequencer.start();//plays midi
		}	catch(NullPointerException npe){}
			catch(IllegalStateException ise){}
	}
	public void stop(){
		try{
			sequencer.stop();
			sequencer.setMicrosecondPosition(0);//resets the sequencer
			sequencer.removeMetaEventListener(this);
			start = 0;
			loopcount = 0;
			allways = true;
		}	catch(NullPointerException npe){}
			catch(IllegalStateException ise){}
	}
	public void pause(){
		try{
			sequencer.stop();//paused if you play again it will start from the point it left off
		}	catch(NullPointerException npe){}
			catch(IllegalStateException ise){}
	}
	public void loop(){
		try{
			sequencer.start();
			sequencer.addMetaEventListener(this);//sends a message when midi is done playing
		}	catch(NullPointerException npe){}
	}
	public void meta(MetaMessage e){
		if(sequencer.getMicrosecondPosition()>=sequencer.getMicrosecondLength()){
			stop();loop();
		}
	}
}