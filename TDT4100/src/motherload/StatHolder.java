public class StatHolder{
	public static String getName(int min){
		if(min==1)return "Coal";else if(min==2)return "Petroleum";else if(min==3)return "Iron";
		else if(min==4)return "Copper";else if(min==5)return "Quartz";else if(min==6)return "Lead";
		else if(min==7)return "Bronze";else if(min==8)return "Silver";else if(min==9)return "Gold";
		else if(min==10)return "Palladium";else if(min==11)return "Cesium";else if(min==12)return "Platinum";
		else if(min==13)return "Opal";else if(min==14)return "Topaz";else if(min==15)return "Emerald";
		else if(min==16)return "Saphire";else if(min==17)return "Ruby";else if(min==18)return "Diamond";
		else if(min==19)return "Amazonite";else if(min==20)return "Thorium";else if(min==21)return "Uranium";
		else if(min==22)return "Plutonium";else if(min==23)return "Moonstone";else if(min==24)return "Starstone";
		else if(min==25)return "Sunstone";else if(min==26)return "Kryptonite";else if(min==27)return "Dark Matter";
		else if(min==28)return "Granite";else if(min==29)return "Marble";else if(min==30)return "Lava";
		else if(min==31)return "Gas";else if(min==32)return "Adamite";else if(min==33)return "Selenite";
		else if(min==34)return "Gyrite";else if(min==35)return "Froyite";else if(min==36)return "Aquamarine";
		else if(min==37)return "Mimetite";else if(min==38)return "Orpiment";else if(min==39)return "Caledonite";
		else if(min==40)return "Fedgarnet";else if(min==41)return "Tanzanite";else if(min==47)return "Mithril";	
		else if(min==48)return "Unobtainium";else if(min==49)return "Adamantium";	else if(min==50)return "Ice9";
		else if(min==51)return "Bomb1";else if(min==52)return "Bomb2";else if(min==53)return "Bomb3";
		return "";
	}
	public static int getPrice(int min){
		if(min==1)return 15;
		else if(min==2)return 40;
		else if(min==3)return 30;
		else if(min==4)return 50;
		else if(min==5)return 75;
		else if(min==6)return 90;
		else if(min==7)return 120;
		else if(min==8)return 250;
		else if(min==9)return 750;
		else if(min==10)return 1000;
		else if(min==11)return 1250;
		else if(min==12)return 1500;
		else if(min==13)return 2500;
		else if(min==14)return 3000;
		else if(min==15)return 4000;
		else if(min==16)return 5000;
		else if(min==17)return 7500;
		else if(min==18)return 12000;
		else if(min==19)return 20000;
		else if(min==20)return 25000;
		else if(min==21)return 30000;
		else if(min==22)return 50000;
		else if(min==23)return 100000;
		else if(min==24)return 200000;
		else if(min==25)return 300000;
		else if(min==26)return 500000;
		else if(min==27)return 1000000;
		else if(min==32)return 75000;
		else if(min>32 && min<42)return (min-32)*50000+50000;
		else if(min==47)return 5000;
		else if(min==48)return 500000;
		else if(min==49)return 50000;
		else return 0;
	}
	public static int getWeight(int min){
		if(min==0)return 0;
		else if(min==1 || min==48 || min==53)return 40;
		else if(min==2 || min==49)return 50;
		else if(min==3)return 30;
		else if(min==4)return 25;
		else if(min==5)return 15;
		else if(min==6)return 80;
		else if(min>=7 && min<=9)return 30;
		else if(min==10)return 25;
		else if(min==11 || min==52)return 20;
		else if(min==12)return 35;
		else if(min<=19)return 5;
		else if(min==20)return 35;
		else if(min==21)return 30;
		else if(min==22)return 25;
		else if(min>=23 && min<=27)return 1;
		else if(min==32)return 100;
		else if(min==33)return 100;
		else if(min==34)return 130;
		else if(min==35)return 150;
		else if(min==36)return 200;
		else if(min==37)return 220;
		else if(min==38)return 250;
		else if(min==39)return 280;
		else if(min==40)return 300;
		else if(min==41)return 350;
		else if(min==47)return 10;
		else if(min==50 || min==51)return 10;  // ice9+bomb1
		else return 0;
	}
	public static int getRx(int min){
		if(min==6)return 8;
		else if(min==8)return 3;
		else if(min==9)return 5;
		else if(min==10)return 30;
		else if(min==11)return 25;
		else if(min==12)return 30;
		else if(min==20)return 100;
		else if(min==21)return 200;
		else if(min==22)return 500;
		else if(min==23)return 300;
		else if(min==24)return 1000;
		else if(min==25)return 2000;
		else if(min==26)return 5000;
		else if(min==27)return 10000;
		else return 0;
	}
	public static int getUpgradePrice(int iddx){
		if(iddx%7==0)return 0;
		else if(iddx==1)return 300;
		else if(iddx==2)return 2000;
		else if(iddx==3)return 10000;
		else if(iddx==4)return 30000;
		else if(iddx==5)return 100000;
		else if(iddx==6)return 500000;
		else if(iddx==8)return 200;
		else if(iddx==9)return 1000;
		else if(iddx==10)return 3000;
		else if(iddx==11)return 10000;
		else if(iddx==12)return 50000;
		else if(iddx==13)return 200000;
		else if(iddx==15)return 1000;
		else if(iddx==16)return 3000;
		else if(iddx==17)return 10000;
		else if(iddx==18)return 40000;
		else if(iddx==19)return 200000;
		else if(iddx==20)return 1000000;
		else if(iddx==22)return 500;
		else if(iddx==23)return 2000;
		else if(iddx==24)return 10000;
		else if(iddx==25)return 50000;
		else if(iddx==26)return 300000;
		else if(iddx==27)return 2000000;
		else if(iddx==29)return 400;
		else if(iddx==30)return 2000;
		else if(iddx==31)return 7000;
		else if(iddx==32)return 15000;
		else if(iddx==33)return 50000;
		else if(iddx==34)return 200000;
		else if(iddx==36)return 1000;
		else if(iddx==37)return 5000;
		else if(iddx==38)return 20000;
		else if(iddx==39)return 100000;
		else if(iddx==40)return 500000;
		else if(iddx==41)return 3000000;
		else if(iddx==43)return 1500;
		else if(iddx==44)return 6000;
		else if(iddx==45)return 30000;
		else if(iddx==46)return 150000;
		else if(iddx==47)return 700000;
		else if(iddx==48)return 5000000;
		else if(iddx==50)return 400;
		else if(iddx==51)return 1000;
		else if(iddx==52)return 10000;
		else if(iddx==53)return 50000;
		else if(iddx==54)return 1000000;
		else return 10000000;
	}
	public static String getUpgradeName(int iddx){
		String str10="";
		if(iddx%7==0)str10="Stock ";
		else if(iddx==1)str10="Small";
		else if(iddx==2)str10="Medium";
		else if(iddx==3)str10="4-cylinder";
		else if(iddx==4)str10="6-cylinder";
		else if(iddx==5)str10="12-cylinder";
		else if(iddx==6)str10="Turbo-X";
		else if(iddx==8)str10="Small";
		else if(iddx==9)str10="Medium";
		else if(iddx==10)str10="Large";
		else if(iddx==11)str10="Extra Large";
		else if(iddx==12)str10="Gigantic";
		else if(iddx==13)str10="Super";
		else if(iddx==15)str10="Small";
		else if(iddx==16)str10="Medium";
		else if(iddx==17)str10="2-Chamber";
		else if(iddx==18)str10="4-Chamber";
		else if(iddx==19)str10="Large";
		else if(iddx==20)str10="Gigantic";
		else if(iddx==22)str10="Small";
		else if(iddx==23)str10="2-Turbine";
		else if(iddx==24)str10="3-Turbine";
		else if(iddx==25)str10="Eon";
		else if(iddx==26)str10="Freon";
		else if(iddx==27)str10="Liquid Nitrogen";
		else if(iddx==29)str10="Bronze";
		else if(iddx==30)str10="Steel";
		else if(iddx==31)str10="Tungsten";
		else if(iddx==32)str10="Diamond-Coated";
		else if(iddx==33)str10="Kryptonite";
		else if(iddx==34)str10="Energy-Shielded";
		else if(iddx==36)str10="Iron-Coated";
		else if(iddx==37)str10="1'' Lead";
		else if(iddx==38)str10="3'' Lead";
		else if(iddx==39)str10="5'' Lead";
		else if(iddx==40)str10="Energy Deflector";
		else if(iddx==41)str10="Super Shield";
		else if(iddx==43)str10="Steel";
		else if(iddx==44)str10="Carbide";
		else if(iddx==45)str10="Tungsten";
		else if(iddx==46)str10="Ruby";
		else if(iddx==47)str10="Diamond";
		else if(iddx==48)str10="NanoTube";
		else if(iddx==50)str10="Small";
		else if(iddx==51)str10="Lithium-1";
		else if(iddx==52)str10="Lithium-2";
		else if(iddx==53)str10="Cadmium";
		else if(iddx==54)str10="Hydrogen Cell";
		else if(iddx==55)str10="Kryptonite";
		/*if(iddx/7==0)str10+=" Engine";
		else if(iddx/7==1)str10+=" Fuel Tank";
		else if(iddx/7==2)str10+=" Cargo Bay";
		else if(iddx/7==3)str10+=" Radiator";
		else if(iddx/7==4)str10+=" Hull";
		else if(iddx/7==5)str10+=" Bio-X";
		else if(iddx/7==6)str10+=" Drill";
		else if(iddx/7==7)str10+=" Battery";*/
		return str10;
	}
	public static int getUpgradeWeight(int iddx){
		if(iddx==0)return 75;	if(iddx==1)return 100;	if(iddx==2)return 150;
		if(iddx==3)return 200;	if(iddx==4)return 250;	if(iddx==5)return 350;
		if(iddx==6)return 500;	if(iddx==7)return 10;	if(iddx==8)return 15;
		if(iddx==9)return 20;	if(iddx==10)return 30;	if(iddx==11)return 50;
		if(iddx==12)return 75;	if(iddx==13)return 100;	if(iddx==14)return 100;
		if(iddx==15)return 150;	if(iddx==16)return 250;	if(iddx==17)return 350;
		if(iddx==18)return 500;	if(iddx==19)return 600;	if(iddx==20)return 700;
		if(iddx==21)return 20;	if(iddx==22)return 30;	if(iddx==23)return 50;
		if(iddx==24)return 70;	if(iddx==25)return 100;	if(iddx==26)return 110;
		if(iddx==27)return 120;	if(iddx==28)return 120;	if(iddx==29)return 150;
		if(iddx==30)return 170;	if(iddx==31)return 200;	if(iddx==32)return 220;
		if(iddx==33)return 300;	if(iddx==34)return 500;	if(iddx==35)return 15;
		if(iddx==36)return 20;	if(iddx==37)return 30;	if(iddx==38)return 70;
		if(iddx==39)return 120;	if(iddx==40)return 150;	if(iddx==41)return 250;
		if(iddx==42)return 30;	if(iddx==43)return 50;	if(iddx==44)return 80;
		if(iddx==45)return 100;	if(iddx==46)return 110;	if(iddx==47)return 120;
		if(iddx==48)return 150;	if(iddx==49)return 25;	if(iddx==50)return 30;
		if(iddx==51)return 50;	if(iddx==52)return 75;	if(iddx==53)return 100;
		if(iddx==54)return 100;	return 120;
	}
	public static int getUpgradeAmount(int iddx){
		if(iddx==0)return 100;
		if(iddx==1)return 250;
		if(iddx==2)return 400;
		if(iddx==3)return 600;
		if(iddx==4)return 750;
		if(iddx==5)return 1000;
		if(iddx==6)return 1500;
		if(iddx==7)return 30;
		if(iddx==8)return 50;
		if(iddx==9)return 100;
		if(iddx==10)return 200;
		if(iddx==11)return 500;
		if(iddx==12)return 1000;
		if(iddx==13)return 2000;
		if(iddx==14)return 500;
		if(iddx==15)return 1000;
		if(iddx==16)return 2000;
		if(iddx==17)return 3000;
		if(iddx==18)return 4000;
		if(iddx==19)return 5000;
		if(iddx==20)return 6000;
		if(iddx==21)return 50;
		if(iddx==22)return 100;
		if(iddx==23)return 200;
		if(iddx==24)return 300;
		if(iddx==25)return 400;
		if(iddx==26)return 500;
		if(iddx==27)return 600;
		if(iddx==28)return 5;
		if(iddx==29)return 10;
		if(iddx==30)return 30;
		if(iddx==31)return 50;
		if(iddx==32)return 200;
		if(iddx==33)return 600;
		if(iddx==34)return 1000;
		if(iddx==35)return 10;
		if(iddx==36)return 50;
		if(iddx==37)return 200;
		if(iddx==38)return 500;
		if(iddx==39)return 2000;
		if(iddx==40)return 10000;
		if(iddx==41)return 60000;
		if(iddx==42)return 50;
		if(iddx==43)return 100;
		if(iddx==44)return 200;
		if(iddx==45)return 1000;
		if(iddx==46)return 2000;
		if(iddx==47)return 5000;
		if(iddx==48)return 10000;
		if(iddx==49)return 50;
		if(iddx==50)return 100;
		if(iddx==51)return 400;
		if(iddx==52)return 1000;
		if(iddx==53)return 2000;
		if(iddx==54)return 6000;
		return 10000;
	}
}	