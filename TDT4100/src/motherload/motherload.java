import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferStrategy;
import java.awt.image.BufferedImage;
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsEnvironment;
import java.io.*;
import javax.swing.*;
import javax.imageio.ImageIO;
import java.awt.geom.AffineTransform;
import java.net.*;
import java.util.Vector;

public class motherload extends Canvas implements ActionListener {
	int gamespd = 27;
	int rw = 800; // room_width 16x12
	int rh = 600; // room_height
	Image imgs[] = new Image[80]; // images
	byte map[][] = new byte[48][3015], mapmode[][] = new byte[48][3015], magma = 79, space = 80;
	int digx = 390, digy = 250, hspd = 5, vspd = 5, mode = 1, iposx, iposy, cposx, fposx, fposy, cposy, termspd = 10;
	double posx = 23, posy = 4, fallspd = 7, hspeed, vspeed;
	int framex = 15, framey = 0, score = 0, bonus = 1000, cheat, nux, time, sky_x, scroll, damx, damy;
	Image dig_r0, dig_r1, dig_r2, dig_l0, dig_l1, dig_l2, dig_dl0, dig_dl1, dig_dl2, dig_dr0, dig_dr1, dig_dr2, flame_r,
			flame_l, fly_r0, fly_r1, fly_r2, fly_r3, fly_l0, fly_l1, fly_l2, fly_l3, hull_l, hull_r,
			ground[] = new Image[6], bar1, bar2, shmootz, base, field, expl, marbs, grans, beamh, beamv, rock,
			nodrill_r, nodrill_l, grv, grh, grul1, grur1, grdl1, grdr1, grul2, grur2, grdl2, grdr2, stpage, box1, box2,
			box3, inventory, sky, radiation, destroyed, bomblamp, shop, cursor, cursor1, popup, ximgs[] = new Image[6],
			shield_img, earthwork, telimg, gate, tracks, imagma[] = new Image[6], mission_img;
	int SHM = 30, RCK = 15, hlx, hly, money_factor, score_factor, trans_cur, transc, datalog, logc, minprof,
			transarr[] = { 5, 12, 70, 100, 110, 150, 390, 590, 790, 996, 1190, 1300, 1500, 1700, 2000, 2400, 9900,
					19900 };
	int grx[] = new int[SHM], gry[] = new int[SHM], grscale[] = new int[SHM], grtype[] = new int[SHM];
	double grxspd[] = new double[SHM], gryspd[] = new double[SHM];
	boolean grexists[] = new boolean[SHM], upgrades[][] = new boolean[8][7], rockexists[] = new boolean[RCK];
	int rockx[] = new int[RCK], rocky[] = new int[RCK], rockyspd[] = new int[RCK], rocks, rockscale[] = new int[RCK],
			rockxspd[] = new int[RCK], logarr[] = new int[6], log_cur, greentimr, timr55;
	int digtimr = 0, timr1 = 0, mouse_x, mouse_y, etimr = 0, eframes = 150, ewidth = 150, explx = 0, exply = 0,
			trdir = 0, trtimr = 0;
	boolean expls = false, tr = false, startpage = true, menu = true, ibomb, sbomb, rbomb, status, explorer, nucb, flg1,
			shieldx;
	boolean right_key = false, left_key = false, up_key = false, down_key = false, right_side = true, ctrl = false, end,
			pop_up = false, globe, sounds = false, music = false, processor = true, highscoresent = false, is_mission;
	int nucbx, nucby, nuctimr, nucrad, detd, gastimr, level, shieldtimr;
	int labl1x, labl1y, labl2x, labl2y, labl2timr, labl1timr, keynum = 0, msgtimr = 0, prev = 0, transtimr, transy;
	String labl2str1, labl1str1, labl1str2, labl2str2, msgstr, inputstr, moneystr, scorestr, score_name, mineralprofit,
			repairscost, selstr3;
	Vector highscores;
	boolean labl1 = false, labl2 = false, msg = false, display = false, flame = false, trans = false, earthq = false,
			rdr;
	int itimr, stimr, ibombx, ibomby, sbombx, sbomby, radx, sonb, iceb, eqtimr, timr2, dir2, gspdtimr, rtimr, rbombx,
			rbomby, radb, teltimr, weight;
	// gages
	int temp, depth, cargo, rx, rpm, hull, money;
	double fuel, battery, drill; // conditions
	int radiator, cargobay, biox, engine, hullx, fueltank, batx, drillx; // upgrade numbers
	int tempmax, cargomax, biomax, engmax, hullmax, fuelmax, batmax, drillmax, ice9max; // maximums
	int shield, dyn, tnt, tel1, tel2, drillfix, hullfix, tractor, coalb, petrolr, gasb, jet, nuc, nucx; // gadgets
	double ff, radf, ice9;
	byte minerals[] = new byte[45]; // cargo count
	int mith, unob, adam, bomb1, bomb2, bomb3;
	boolean glow[] = new boolean[100], xkey = false, zkey = false;
	// menu stuff
	int selx, sely, tab, selymax, selprice, selamount;
	String selstr1, selstr2;
	TextPanel panel;
	Mission mission;
	// colors
	Color c_red = new Color(255, 0, 0), back_color = new Color(145, 120, 87), c_bar = new Color(44, 16, 6);
	Color c_black = new Color(0, 0, 0), c_green = new Color(0, 200, 0), c_blue = new Color(0, 0, 255);
	Color c_grey = new Color(200, 200, 200), c_grey2 = new Color(80, 80, 80);
	Color c_white = new Color(255, 255, 255), c_brown = new Color(194, 121, 22);
	AlphaComposite alpha = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.5f);
	AlphaComposite alphanull = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 1.0f);
	// fonts
	Font labelfont = new Font("Arial", Font.BOLD, 11);
	Font dfont = new Font("Arial", Font.BOLD, 14);
	Font barfont = new Font("Century", Font.BOLD, 16);
	Font font20 = new Font("Arial", Font.BOLD, 20);
	Font bardraw = new Font("Commerce SF", Font.BOLD, 15);
	Font narrowfont = new Font("Niagara Solid", Font.BOLD, 17);
	BufferStrategy strategy;
	// sounds
	Sound theme, shipexpl, s_clank, s_earthquake, s_dynamite, s_tnt, s_beep, s_jet, s_prop, s_drill, s_gate, s_lava,
			s_shield, s_wind, s_boom, s_teleport, s_sonicbomb, s_icebomb;
	boolean is_prop, is_lava, is_drill, is_gate, is_wind;
	// AWT components
	JPanel controlpanel;
	JButton b_restart, b_game, b_shops, b_help, b_mission, b_connect;

	public motherload() {
		controlpanel = new JPanel();
		b_mission = new JButton("Mission");
		b_mission.setPreferredSize(new Dimension(120, 20));
		b_restart = new JButton("Restart");
		b_restart.setPreferredSize(new Dimension(120, 20));
		b_shops = new JButton("Shop Controls");
		b_shops.setPreferredSize(new Dimension(120, 20));
		b_game = new JButton("Game Controls");
		b_game.setPreferredSize(new Dimension(120, 20));
		b_help = new JButton("Help");
		b_help.setPreferredSize(new Dimension(120, 20));
		b_connect = new JButton("Connect");
		b_connect.setPreferredSize(new Dimension(120, 20));
		controlpanel.add(b_mission);
		controlpanel.add(b_restart);
		controlpanel.add(b_game);
		controlpanel.add(b_shops);
		controlpanel.add(b_connect);
		controlpanel.add(b_help);
		controlpanel.setPreferredSize(new Dimension(800, 25));
		b_mission.addActionListener(this);
		b_restart.addActionListener(this);
		b_shops.addActionListener(this);
		b_game.addActionListener(this);
		b_help.addActionListener(this);
		b_connect.addActionListener(this);
		JFrame container = new JFrame("MLU");
		JPanel jpanel = (JPanel) container.getContentPane();
		jpanel.setPreferredSize(new Dimension(798, 625));
		jpanel.setLayout(new BorderLayout());
		setBounds(0, 0, 798, 600);
		jpanel.add(this, BorderLayout.CENTER);
		jpanel.add(controlpanel, BorderLayout.NORTH);
		setIgnoreRepaint(true);
		container.pack();
		container.setResizable(false);
		container.setVisible(true);
		container.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				System.exit(0);
			}
		});
		addKeyListener(new KeyAdapter() {
			public void keyPressed(KeyEvent e) {
				KeyDown(e);
			}
		});
		addKeyListener(new KeyAdapter() {
			public void keyReleased(KeyEvent e) {
				KeyUp(e);
			}
		});
		addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				MouseDown(e);
			}
		});
		requestFocus();
		createBufferStrategy(2);
		strategy = getBufferStrategy();
		restart();
	}

	public void restart() {
		money = 0;
		temp = 0;
		depth = 0;
		cargo = 0;
		rx = 0;
		rpm = 0;
		hull = 0;
		fuel = 30;
		battery = 0;
		drill = 50;
		msgtimr = 0;
		radiator = 1;
		cargobay = 1;
		biox = 1;
		engine = 1;
		hullx = 1;
		fueltank = 1;
		batx = 1;
		drillx = 1;
		timr1 = 0;
		timr55 = 0;
		tempmax = 50;
		cargomax = 500;
		biomax = 10;
		engmax = 100;
		hullmax = 5;
		fuelmax = 30;
		batmax = 50;
		drillmax = 50;
		dyn = 0;
		tnt = 0;
		tel1 = 0;
		tel2 = 0;
		drillfix = 0;
		hullfix = 0;
		tractor = 0;
		coalb = 0;
		petrolr = 0;
		gasb = 0;
		jet = 0; // --
		nuc = 0;
		nucx = 0;
		radf = 0.001;
		flame = false;
		msg = false;
		digx = 390;
		digy = 250;
		posx = 23;
		posy = 4;
		mode = 1;
		framex = 15;
		framey = 0;
		score = 0;
		bonus = 1000;
		transtimr = 0;
		trans = false;
		ibomb = false;
		sbomb = false;
		itimr = 0;
		stimr = 0;
		ibombx = 0;
		ibomby = 0;
		sbombx = 0;
		sbomby = 0;
		flg1 = false;
		time = 0;
		gastimr = 0;
		rbomb = false;
		shieldx = false;
		radx = 0;
		sonb = 0;
		iceb = 0;
		msgstr = "";
		cheat = 0;
		rdr = true;
		status = false;
		eqtimr = 0;
		earthq = false;
		explorer = false;
		mith = 0;
		unob = 0;
		adam = 0;
		ice9 = 0;
		bomb1 = 0;
		bomb2 = 0;
		bomb3 = 0;
		timr2 = 0;
		ice9max = 0;
		nux = 0;
		nucb = false;
		detd = 85200;
		gspdtimr = 0;
		moneystr = "0";
		scorestr = "0";
		end = false;
		pop_up = false;
		selstr3 = "";
		globe = false;
		is_prop = false;
		money_factor = 10;
		score_factor = 10;
		processor = true;
		digtimr = 0;
		is_lava = false;
		is_drill = false;
		is_gate = false;
		shieldtimr = 0;
		shield = 0;
		radb = 0;
		teltimr = 0;
		transc = 0;
		transy = transarr[transc];
		logc = 0;
		greentimr = 0;
		is_wind = true;
		level = 1;
		is_mission = false;
		for (int i = 0; i < 48; i++) {
			for (int j = 0; j < 3000; j++)
				map[i][j] = 0;
			for (int j = 3000; j < 3015; j++)
				map[i][j] = magma;
		}
		for (int i = 0; i < 8; i++) {
			upgrades[i][0] = true;
			for (int j = 1; j < 7; j++)
				upgrades[i][j] = false;
		}
		for (int i = 0; i < SHM; i++)
			grexists[i] = false;
		for (int i = 0; i < RCK; i++)
			rockexists[i] = false;
		for (int i = 0; i < 45; i++)
			minerals[i] = 0;
		for (int i = 0; i < 100; i++)
			glow[i] = false;
		glow[6] = true;
		for (int i = 8; i <= 12; i++)
			glow[i] = true;
		for (int i = 20; i <= 26; i++)
			glow[i] = true;
		iposy = (int) Math.round(posy);
		backColor();
		sky_x = -iposx * 100 / 47;
		inputstr = "";
		selx = 0;
		sely = 0;
		tab = 1;
		// start page images
		stpage = getImage("images/startpage.jpg");
		box1 = getImage("images/box_on.png");
		box2 = getImage("images/box_off.png");
		cursor = getImage("images/green_light.png");
		cursor1 = getImage("images/black_light.png");
		imgs[4] = getImage("images/music_on.png");
		imgs[5] = getImage("images/sounds_on.png");
		imgs[6] = getImage("images/level_on.png");
		setBackground(new Color(204, 102, 0)); // background orange
		theme = new Sound("images/Sounds/start_theme.mid");
		if (music == true) {
			theme.stop();
			theme.loop();
		}
		if (sounds == true) {
			s_prop.stop();
			s_jet.stop();
			s_lava.stop();
			s_drill.stop();
			s_wind.stop();
		}
		loadHighScores();
	}

	public void actionPerformed(ActionEvent e) {
		JButton but = (JButton) e.getSource();
		if (but == b_help) {
			String msg = "Motherload Unlimited (MLU). c. 2008\n"
					+ "MLU is a game that takes you underground in search of valuable martian minerals.\n"
					+ "You are in control of a state-of-the-art mining pod, and it is your job to upgrade\n"
					+ "and equip it with all kinds of gadgets and items. Make it all the way to the\n"
					+ "deepest depths, complete dangerous missions and you will be rewarded with a\n"
					+ "MOTHERLOAD of riches.";
			JOptionPane.showMessageDialog(this, msg, "About", JOptionPane.INFORMATION_MESSAGE);
		} else if (but == b_shops) {
			String msg = "    Shop Controls:\n" + "Space Bar:       Buy item/Fix ship/Refill\n"
					+ "Enter Key:         Switch Shops\n" + "Esc:                    Exit\n"
					+ "Arrow Keys:     Scroll through items\n";
			JOptionPane.showMessageDialog(this, msg, "Controls", JOptionPane.INFORMATION_MESSAGE);
		} else if (but == b_game) {
			String msg = "    Game Controls:\n" + "Arrow Keys:                        Move\n"
					+ "Space Bar:                          Dig horizontal\n"
					+ "Down Key:                           Dig down\n"
					+ "Shift:                                     Jet Booster On/Off\n"
					+ "V:                                           Shield\n"
					+ "C:                                           Mineral Converter On/Off\n"
					+ "1:                                           Sonic Bomb\n"
					+ "2:                                           Ice Bomb\n"
					+ "3:                                           Radiation Bomb\n"
					+ "Q:                                          Teleport 1\n"
					+ "W:                                         Teleport 2\n"
					+ "A:                                           Hull Repair\n"
					+ "S:                                           Drill Repair\n"
					+ "Z:                                           Dynamite\n"
					+ "X:                                          TNT Explosives\n"
					+ "M:                    	                      Pause/Inventory/Datalog\n"
					+ "Ctrl + Arrow Keys             Tractor Beam\n";
			JOptionPane.showMessageDialog(this, msg, "Controls", JOptionPane.INFORMATION_MESSAGE);
		} else if (but == b_restart) {
			menu = true;
			startpage = true;
			restart();
		} else if (but == b_mission && is_mission == true) {
			String msg1 = mission.makeString(minerals);
			JOptionPane.showMessageDialog(this, msg1, "Mission", JOptionPane.INFORMATION_MESSAGE);
		} else if (but == b_connect) {
			loadHighScores();
			if (highscores == null)
				JOptionPane.showMessageDialog(this, "Error Connecting to the DataBase", "Error",
						JOptionPane.ERROR_MESSAGE);
			else
				JOptionPane.showMessageDialog(this, "Highscores reloaded!", "Info", JOptionPane.INFORMATION_MESSAGE);
		}
	}

	public void gameLoop() {
		// Thread.currentThread().setPriority(Thread.MIN_PRIORITY);
		while (true) {
			if (menu == false && iposy <= 2999 && status == false && trans == false) {
				time++;
				iposx = (int) Math.round(posx);
				cposx = (int) Math.ceil(posx);
				cposy = (int) Math.ceil(posy);
				fposx = (int) Math.floor(posx);
				fposy = (int) Math.floor(posy + 0.01);
				iposy = (int) Math.round(posy);
				/* things */ double fs = 0;
				prev = digy;
				depth = (iposy - 4) * 10;
				temp = (int) Math.round(0.5 * posy) - 10;
				if (fuel <= 0 && msg == false) {
					msg = true;
					msgstr = "FUEL TANK EMPTY!";
				}
				if (rpm > engmax && msg == false) {
					msg = true;
					msgstr = "ENGINE FAILURE!";
				}
				if (score > bonus && bonus > 0 && end == false) {
					money += bonus / 10;
					moneystr = makeString(money);
					labl2 = true;
					labl2x = digx;
					labl2y = digy - 30;
					labl2timr = 0;
					labl2str1 = "Bonus - $" + bonus / 10;
					labl2str2 = "";
					if (bonus == 100 * score_factor)
						bonus = 500 * score_factor;
					else if (bonus == 500 * score_factor)
						bonus = 2000 * score_factor;
					else if (bonus == 2000 * score_factor)
						bonus = 10000 * score_factor;
					else if (bonus == 10000 * score_factor)
						bonus = 100000 * score_factor;
					else if (bonus == 100000 * score_factor)
						bonus = 300000 * score_factor;
					else if (bonus == 300000 * score_factor)
						bonus = 1000000 * score_factor;
					else if (bonus == 1000000 * score_factor)
						bonus = 2500000 * score_factor;
					else if (bonus == 2500000 * score_factor)
						bonus = 10000000 * score_factor;
					else if (bonus == 10000000 * score_factor)
						bonus = 20000000 * score_factor;
					else if (bonus == 20000000 * score_factor)
						bonus = 100000000 * score_factor;
				}
				if (map[iposx][iposy] == magma && explorer == false && shieldx == false) { // magma
					hull += 10;
					temp += 100;
					if (expls == false && shieldx == false)
						makeExpl();
					if (temp > tempmax && ice9 < 0) {
						msg = true;
						msgstr = "OVERHEAT!";
					}
					if (hull > hullmax) {
						msg = true;
						msgstr = "SHIP DAMAGED!";
						damx = digx;
						damy = digy;
					}
				}
				if (iposy >= transy && trans == false) {
					String msgstr = loadTrans(transy);
					trans_cur = transc;
					panel = new TextPanel(msgstr, 170, 130, 65, 15);
					if (transy == 5 || transy == 10000)
						panel.addLine("Good luck!");
					trans = true;
					selx = 1;
					sely = 0;
					transImages();
					mineralprofit = makeString(getMineralProfit());
				}
				if (ice9 >= 0) {
					ice9 -= (0.000001 * iposy + 0.0003);
					if (map[iposx][iposy] == magma)
						ice9 -= 0.003;
				}
				if (explorer == true && temp >= 1250 && battery < batmax) {
					battery += 0.00007 * posy - 0.03;
					if (map[iposx][iposy] == magma)
						battery += 0.1;
				}
				if (teltimr > 0) {
					teltimr++;
					if (teltimr == 20) {
						teltimr = 0;
						randomTel();
						for (int i = 0; i < SHM; i++)
							grexists[i] = false;
						labl1 = false;
						labl2 = false;
						expls = false;
						earthq = false;
						if (sounds == true) {
							s_prop.stop();
							s_jet.stop();
							s_lava.stop();
						}
						backColor();
						redraw();
					}
				}
				/* tractor */ if (ctrl == true && tractor == 1 && mode == 1 && battery + fuel >= 30 && tr == false) {
					if (right_key == true && iposx < 47) {
						tr = true;
						trdir = 0;
						mineral(iposx + 1, iposy);
					} else if (up_key == true) {
						tr = true;
						trdir = 1;
						mineral(iposx, iposy - 1);
					} else if (left_key == true && iposx > 0) {
						tr = true;
						trdir = 2;
						mineral(iposx - 1, iposy);
					} else if (down_key == true) {
						tr = true;
						trdir = 3;
						mineral(iposx, iposy + 1);
					}
					if (tr == true) {
						redraw();
						if (battery >= 30)
							battery -= 30;
						else {
							fuel -= (30 - battery);
							battery = 0;
						}
					}
				}
				/* right */ if (right_key == true && cposx <= 47) {
					if (ctrl == false && digtimr == 0 && map[iposx][iposy] >= magma && map[cposx][iposy] >= magma
							&& (fuel + battery) > 0) {
						sky_x = -iposx * 100 / 47;
						posx += 0.02 * hspd;
						digx += hspd;
						if (digx > rw - 200) {
							if (framex < 30) {
								framex += 3;
								shiftx(-150);
							} else if (framex == 30) {
								framex += 2;
								shiftx(-100);
							}
						}
						if (up_key == false)
							fs += 0.000002 * (2000 + cargo + fuel) + 0.0015;
						else
							fs += 0.000001 * (2000 + cargo + fuel) + 0.0005;
					}
				}
				/* left */ else if (left_key == true && fposx >= 0) {
					if (ctrl == false && digtimr == 0 && map[iposx][iposy] >= magma && map[fposx][iposy] >= magma
							&& (fuel + battery) > 0) {
						sky_x = -iposx * 100 / 47;
						posx -= 0.02 * hspd;
						digx -= hspd;
						if (digx < 100) {
							if (framex > 2) {
								framex -= 3;
								shiftx(150);
							} else if (framex == 2) {
								framex -= 2;
								shiftx(100);
							}
						}
						if (up_key == false)
							fs += 0.000002 * (2000 + cargo + fuel) + 0.0015;
						else
							fs += 0.000001 * (2000 + cargo + fuel) + 0.0005;
					}
				}
				/* fly up */ if (up_key == true && digtimr == 0 && ctrl == false) {
					timr1++;
					gastimr++;
					fs += 0.000005 * (1300 + weight + cargo + fuel) + 0.002;
					if (flame == true)
						fs += 0.000005 * (weight + cargo + fuel) + 0.002;
					if (map[iposx][iposy] >= magma && map[iposx][fposy] >= magma && iposy > 2 && (fuel + battery) > 0) {
						if (is_prop == false && sounds == true) {
							if (flame == true || explorer == true) {
								s_jet.loop();
								is_prop = true;
							} else {
								s_prop.loop();
								is_prop = true;
							}
						}
						int vmax = (int) Math.round(-0.04 * (100 * rpm / engmax) + 7);
						vspd = (vmax - 1) * gastimr / 50 + 1;
						if (vspd > 5)
							vspd = 5;
						if (flame == true)
							vspd = 20 * vspd / 8;
						if (map[iposx][iposy] == magma)
							vspd = 4;
						posy -= 0.02 * vspd;
						digy -= vspd;
						if (digy < 150 && iposy > 2) {
							framey -= 3;
							shifty(150);
						}
						mode = 3;
					} else if (flame == true && prev == digy && expls == false && framey > 0 && shieldx == false) {
						hull += 3;
						makeExpl();
					}
				} else if (is_prop == true) {
					is_prop = false;
					s_prop.stop();
				}
				if (explorer == false) {
					/* dig down */ if (mode == 4) { // dig down
						digtimr++;
						makeGr();
						posy += 0.02;
						digy++;
						fs += 0.02 * (0.0077 * posy + 0.5);
						if (digy > rh - 200) {
							framey += 3;
							shifty(-150);
						}
						if (digtimr == 35 && sounds == true)
							s_drill.stop();
						else if (digtimr == 45) {
							mineral(iposx, iposy);
							map[iposx][iposy] = space;
							score++;
							magmaFlow();
							scorestr = makeString(score);
							if (temp > tempmax && ice9 < 0) {
								msg = true;
								msgstr = "OVERHEAT!";
							}
							redraw();
							rdr = false;
						}
						if (digtimr == 50) {
							digtimr = 0;
							mode = 1;
						}
						if (drill < 0)
							drill = 0;
					}
					/* dig H */ else if (mode == 2) {
						digtimr++;
						makeGr();
						fs += 0.02 * (0.0077 * posy + 0.5);
						if (right_side == false) {
							posx -= 0.02;
							digx--;
							if (digx < 100) {
								if (framex > 2) {
									framex -= 3;
									shiftx(150);
								} else if (framex == 2) {
									framex -= 2;
									shiftx(100);
								}
							}
						} else {
							posx += 0.02;
							digx++;
							if (digx > rw - 200) {
								if (framex < 30) {
									framex += 3;
									shiftx(-150);
								} else if (framex == 30) {
									framex += 2;
									shiftx(-100);
								}
							}
						}
						if (digtimr == 35 && sounds == true)
							s_drill.stop();
						if (digtimr == 45) {
							mineral(iposx, iposy);
							map[iposx][iposy] = space;
							score++;
							scorestr = makeString(score);
							magmaFlow();
							redraw();
						}
						if (digtimr == 50) {
							digtimr = 0;
							mode = 1;
						}
						if (drill < 0)
							drill = 0;
					}
				}
				// end digger dig
				/* fall down */ if (map[iposx][fposy + 1] >= magma && (up_key == false || (fuel + battery) < 0)
						&& digtimr == 0 && timr2 == 0 && status == false) {
					mode = 5;
					timr1++;
					if (fallspd < termspd)
						fallspd += 0.05;
					if (map[iposx][iposy] == magma)
						fallspd = 4;
					posy += 0.02 * fallspd;
					digy += (int) Math.round(fallspd);
					if (digy > rh - 200) {
						framey += 3;
						shifty(-150);
					}
					if (map[iposx][(int) Math.floor(posy + 0.01)] < 47) {
						timr1 = 0;
						mode = 1;
						fallspd = 7;
					}
					if (temp > tempmax && ice9 < 0) {
						msg = true;
						msgstr = "OVERHEAT!";
					}
				} else if (up_key == false && mode == 5) {
					if (shieldx == false && fallspd > 8) {
						hull += (int) (0.1 * fallspd * fallspd - 4);
						makeExpl();
					}
					timr1 = 0;
					mode = 1;
					fallspd = 7;
				}
				if (ice9 <= 0)
					fs += radf;
				if (battery <= 0)
					fuel -= fs;
				else
					battery -= fs;
				rpm = (int) Math.round(5500 * fs);
				if (digy == prev && up_key == false && digtimr == 0) {
					digy = (int) (-framey + iposy + 1) * 50;
					mode = 1;
					if (map[iposx][iposy] < magma) {
						posy -= 1;
						digy -= 50;
					}
				}
				if (sounds == true && depth == 0) {
					if (posx >= 43 && is_gate == false) {
						is_gate = true;
						s_gate.play();
					} else if (is_gate == true && posx < 43) {
						is_gate = false;
						s_gate.play();
					}
				}
				/* Enter base */ if (depth == 0 && iposx > 44) { // base
					menu = true;
					loadMenuTiles();
					selx = 0;
					sely = 0;
					tab = 1;
					selymax = 5;
					timr1 = 0;
					greentimr = 0;
					etimr = 0;
					scroll = 0;
					score_name = "";
					is_gate = false;
					mineralprofit = makeString(getMineralProfit());
					minprof = getMineralProfit();
					repairscost = makeString(getRepairsCost());
					if (sounds == true) {
						s_prop.stop();
						s_jet.stop();
						s_lava.stop();
						s_wind.stop();
					}
					shop = getImage("images/repairs.jpg");
					cursor = getImage("images/repairs_cursor.png");
					if (music == true) {
						theme.stop();
						theme = new Sound("images/Sounds/shops_theme.mid");
						theme.loop();
					}
					if (is_mission == true && mission.isCompleted() == true) {
						money += mission.getBonus();
						moneystr = makeString(money);
						String msg1 = "Mission Complete!\n" + "Bonus: $" + makeString(mission.getBonus());
						JOptionPane.showMessageDialog(this, msg1, "Mission", JOptionPane.INFORMATION_MESSAGE);
					}
					is_mission = false;
				}
				/* EarthQ */ if (earthq == true) {
					eqtimr++;
					if (eqtimr > 200) {
						eqtimr = 0;
						earthq = false;
						if (s_earthquake != null)
							s_earthquake.stop();
					}
					if (eqtimr < 150 && Math.random() < 0.07)
						for (int i = 0; i < RCK; i++)
							if (rockexists[i] == false) {
								rockexists[i] = true;
								rockx[i] = (int) Math.round(rw * Math.random());
								rocky[i] = -50;
								rockyspd[i] = (int) Math.round(5 * Math.random()) + 10;
								break;
							}
					for (int i = 0; i < RCK; i++)
						if (rockexists[i] == true) {
							if (rockx[i] > digx - 30 && rockx[i] < digx + 40 && rocky[i] > digy - 50
									&& rocky[i] < digy + 10) {
								rockexists[i] = false;
								if (shieldx == false) {
									makeExpl();
									hull += 80;
								}
							}
							rocky[i] += rockyspd[i];
							if (rocky[i] > rh + 50)
								rockexists[i] = false;
						}
				}
			} // end menu=false;
			/* swim */ else if (menu == false && iposy >= 3000) { // swim through magma
				if (flg1 == false) {
					flg1 = true;
					loadSwim();
				}
				time++;
				/* things */ double fs = vspeed / 30;
				depth += (int) Math.round(vspeed / 2);
				temp = depth / 60 + 990;
				if (battery < batmax)
					battery += depth / 157000 + 0.0889;
				ice9 -= ((double) depth / 2882000 - 0.0041);
				if (ice9 < 0) {
					msg = true;
					msgstr = "OVERHEAT!";
				}
				if (fuel < 0) {
					msg = true;
					msgstr = "FUEL TANK EMPTY!";
				}
				if (explorer == false) {
					hull += 10;
					if (expls == false && shieldx == false)
						makeExpl();
					if (hull > hullmax) {
						msg = true;
						msgstr = "SHIP DAMAGED!";
					}
				}
				/* controls */ if (right_key == true && digx < rw) {
					digx += 5;
					fs += 0.05;
				} else if (left_key == true && digx > 0) {
					digx -= 5;
					fs += 0.05;
				}
				if (up_key == true && digy > 0) {
					digy -= 5;
					fs += 0.05;
				} else if (down_key == true && digy < rh) {
					digy += 5;
					fs += 0.05;
				}
				if (xkey == true && vspeed < 20)
					vspeed += 0.1;
				if (zkey == true && vspeed > 3)
					vspeed -= 0.1;
				if (battery > 0)
					battery -= fs;
				else
					fuel -= fs;
				/* diamonds */ if (depth > 32000 && rocks < 6) {
					double num = 0.0000005 * depth;
					if (Math.random() < num) {
						for (int i = 0; i < 15; i++)
							if (grexists[i] == false) {
								grexists[i] = true;
								gryspd[i] = (int) Math.round(8 * Math.random() - 4);
								grx[i] = (int) Math.round(rw * Math.random() - 150);
								gry[i] = rh + 50;
								grtype[i] = (int) Math.floor(3 * Math.random()) + 1;
								grscale[i] = (int) Math.round(30 * Math.random() + 30);
								rocks++;
								break;
							}
					}
				}
				for (int i = 0; i < 15; i++)
					if (grexists[i] == true) {
						gry[i] += gryspd[i] - vspeed;
						int cx = grx[i] + 268 / 2, cy = gry[i] + 369 / 2;
						if (grtype[i] == 1) {
							if (digx > grx[i] + 27 * grscale[i] / 100 && digx < grx[i] + 198 * grscale[i] / 100
									&& digy > grx[i] + 6 * grscale[i] / 100 && digy < 128 * grscale[i] / 100)
								collision();
							else if (digx > grx[i] && digx < grx[i] + 267 * grscale[i] / 100
									&& digy > gry[i] + 128 * grscale[i] / 100 && digy < gry[i] + 247 * grscale[i] / 100)
								collision();
							else if (digx > grx[i] + 32 * grscale[i] / 100 && digx < grx[i] + 214 * grscale[i] / 100
									&& digy > gry[i] + 247 * grscale[i] / 100 && digy < gry[i] + 362 * grscale[i] / 100)
								collision();
						} else if (grtype[i] == 2) {
							cx = grx[i] + 241 / 2;
							cy = gry[i] + 300 / 2;
							if (digx > grx[i] + 16 * grscale[i] / 100 && digx < grx[i] + 185 * grscale[i] / 100
									&& digy > gry[i] + 15 * grscale[i] / 100 && digy < gry[i] + 113 * grscale[i] / 100)
								collision();
							else if (digx > grx[i] + 2 * grscale[i] / 100 && digx < grx[i] + 236 * grscale[i] / 100
									&& digy > gry[i] + 113 * grscale[i] / 100 && digy < gry[i] + 189 * grscale[i] / 100)
								collision();
							else if (digx > grx[i] + 27 * grscale[i] / 100 && digx < grx[i] + 232 * grscale[i] / 100
									&& digy > gry[i] + 202 * grscale[i] / 100 && digy < gry[i] + 292 * grscale[i] / 100)
								collision();
						} else if (grtype[i] == 3) {
							cx = grx[i] + 404 / 2;
							cy = gry[i] + 346 / 2;
							if (digx > grx[i] + 13 * grscale[i] / 100 && digx < grx[i] + 226 * grscale[i] / 100
									&& digy > gry[i] + 17 * grscale[i] / 100 && digy < gry[i] + 205 * grscale[i] / 100)
								collision();
							else if (digx > grx[i] + 226 * grscale[i] / 100 && digx < grx[i] + 392 * grscale[i] / 100
									&& digy > gry[i] + 34 * grscale[i] / 100 && digy < gry[i] + 249 * grscale[i] / 100)
								collision();
							else if (digx > grx[i] + 94 * grscale[i] / 100 && digx < grx[i] + 383 * grscale[i] / 100
									&& digy > gry[i] + 205 * grscale[i] / 100 && digy < gry[i] + 330 * grscale[i] / 100)
								collision();
						}
						if (expls == true && eframes == 40 && etimr < 30) { // collision with TNT
							double dist = Math.sqrt((explx - grx[i] + 75) * (explx - grx[i] + 75)
									+ (exply - gry[i]) * (exply - gry[i]));
							if (dist < 170) {
								grexists[i] = false;
								rocks--;
							}
							/*
							 * for(int j=0;j<RCK;j++){ rockx[j]=cx;rocky[j]=cy;rockexists[i]=true;
							 * rockscale[j]=(int)Math.round(20*Math.random()+10);
							 * rockxspd[j]=(int)Math.round(10*Math.random()+5);
							 * rockyspd[j]=(int)Math.round(10*Math.random()+5); }
							 */
						}
						if (gry[i] < -400) {
							grexists[i] = false;
							rocks--;
						}
					} // end diamond step
			}
			Graphics2D g = (Graphics2D) strategy.getDrawGraphics();
			paint(g);
			g.dispose();
			strategy.show();
			try {
				Thread.sleep(gamespd);
			} catch (InterruptedException ex) {
			}
			// Thread.currentThread().setPriority(Thread.MAX_PRIORITY);
		}
	}

	public Image getImage(String filename) {
		BufferedImage source = null;
		URL url = this.getClass().getClassLoader().getResource(filename);
		try {
			source = ImageIO.read(url);
		} catch (IOException e) {
			System.out.println(filename + " not found!");
		}
		if (filename.indexOf(".jpg") > -1 || filename.indexOf(".JPG") > -1)
			return source;
		GraphicsConfiguration gc = GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice()
				.getDefaultConfiguration();
		Image image = gc.createCompatibleImage(source.getWidth(), source.getHeight(), Transparency.TRANSLUCENT);
		Graphics gfx = image.getGraphics();
		Graphics2D g2d = (Graphics2D) gfx;
		g2d.setComposite(AlphaComposite.SrcOver);
		g2d.drawImage(source, 0, 0, null, this);
		return image;
	}

	/*
	 * public Image getImage(String filename){ BufferedImage img = null; try { img =
	 * ImageIO.read(new File(filename)); } catch (IOException e) {} return
	 * (Image)img; }
	 */
	// key
	// ---------------------------------------------------------------------------------------------------------
	public void KeyDown(KeyEvent e) { // key press event
		int key = e.getKeyCode();
		keynum = key;
		if (status == false && trans == false) {
			if (key == 38)
				up_key = true;
			else if (key == 37)
				left_key = true;
			else if (key == 39)
				right_key = true;
			else if (key == 40)
				down_key = true; // down
		}
		if (status == true || trans == true) {
			if (key == 38) { // up key
				if (sely > 0)
					sely--;
				else
					sely = 5;
				if (sounds == true)
					s_beep.play();
			} else if (key == 37) { // left key
				if (selx > 0)
					selx--;
				else
					selx = 2;
			} else if (key == 40) { // down key
				if (sely < 5)
					sely++;
				else
					sely = 0;
				if (sounds == true)
					s_beep.play();
			} else if (key == 39) { // right key
				if (selx < 2)
					selx++;
				else
					selx = 0;
			} else if (key == 10)
				inventoryEvent();
			else if (key == 27) {
				sely = 5;
				inventoryEvent();
			} // esc
			if (key == 37 || key == 39) {
				sely = 0;
				if (sounds == true)
					s_beep.play();
				if (status == true && transc > 0 && selx == 1) { // trans
					trans_cur = transc - 1;
					String msgstr = loadTrans(transarr[trans_cur]);
					panel = new TextPanel(msgstr, 170, 130, 65, 15);
				} else if (trans == true && selx == 1) {
					trans_cur = transc;
					String msgstr = loadTrans(transarr[trans_cur]);
					panel = new TextPanel(msgstr, 170, 130, 65, 15);
				} else if (selx == 0) { // datalog
					if (logc > 0) {
						log_cur = logc - 1;
						loadDataLog(logarr[log_cur]);
					} else
						panel = null;
				}
			}
		} else if (menu == false && iposy < 3000) {
			if (key == 38)
				fallspd = 7; // 1004
			else if (key == 37)
				right_side = false;
			else if (key == 39)
				right_side = true;
			else if (key == 40) { // down
				if (digtimr == 0 && mode == 1 && ctrl == false && drill > 0) {
					boolean b1 = true;
					if (drill < 200 && (map[iposx][iposy + 1] == 29 || map[iposx][iposy + 1] == 30))
						b1 = false;
					if (iposy < 5 && iposx > 43)
						b1 = false;
					if (b1 == true) {
						digx = 50 * (iposx - framex) - 10;
						posx = 0.02 * (digx + 10) + framex;
						mode = 4;
						if (explorer == true) {
							timr2 = 1;
							dir2 = 3;
							boom(dir2);
						} else if (sounds == true)
							s_drill.loop();
					}
				}
			} else if (key == 32) { // space
				if (digtimr == 0 && mode == 1 && drill > 0) {
					int dx = digx;
					digx = (iposx - framex) * 50 - 10;
					digy = (iposy - framey) * 50 + 50;
					if (Math.abs(digx - dx) >= 20) {
						if (digx - dx > 0)
							digx -= Math.abs(digx - dx) / 2;
						else
							digx += Math.abs(digx - dx) / 2;
					}
					posx = 0.02 * (digx + 10) + framex;
					if (right_side == false && iposx > 0 && map[iposx - 1][iposy] < magma) {
						mode = 2;
						if (drill < 200 && (map[iposx - 1][iposy] == 29 || map[iposx - 1][iposy] == 30))
							mode = 1;
						if (explorer == true) {
							timr2 = 1;
							dir2 = 2;
							boom(dir2);
						} else if (mode == 2 && sounds == true)
							s_drill.loop();
					} else if (right_side == true && iposx < 47 && map[iposx + 1][iposy] < magma) {
						mode = 2;
						if (drill < 200 && (map[iposx + 1][iposy] == 29 || map[iposx + 1][iposy] == 30))
							mode = 1;
						if (iposy == 5 && iposx >= 43)
							mode = 1;
						if (explorer == true) {
							timr2 = 1;
							dir2 = 1;
							boom(dir2);
						} else if (mode == 2 && sounds == true)
							s_drill.loop();
					}
				}
			} else if (key == 17)
				ctrl = true; // control
			else if (key == 10) { // enter
				if (pop_up == true)
					pop_up = false;
			} else if (key == 'Z' && expls == false && digtimr == 0 && iposy > 2 && (dyn > 0 || nux >= 30)) { // Z -
																												// dynomite
				expl = getImage("images/dynomite.png");
				if (sounds == true)
					s_dynamite.play();
				ewidth = 150;
				eframes = 20;
				explx = digx - 40;
				exply = digy - 100;
				expls = true;
				if (dyn > 0)
					dyn--;
				else
					nux -= 30;
				for (int i = 0; i < SHM; i++)
					if (grexists[i] == false) {
						grexists[i] = true;
						grxspd[i] = 16 * Math.random() - 8;
						gryspd[i] = 16 * Math.random() - 8;
						grx[i] = digx;
						gry[i] = digy;
						grscale[i] = (int) Math.round(10 * Math.random() + 10);
						grtype[i] = 0;
					}
				int stx = iposx, endx = iposx;
				if (iposx > 0)
					stx = iposx - 1;
				if (iposx < 47)
					endx = iposx + 1;
				if (posy > 1000 && earthq == false) {
					double t1 = Math.random(), t2 = 0.00002 * posy;
					if (t1 < t2) {
						eqtimr = 0;
						earthq = true;
						EarthQuake();
					}
				}
				explos(1, stx, endx);
				magmaFlow();
				redraw();
			} else if (key == 'X' && expls == false && digtimr == 0 && iposy > 2 && (tnt > 0 || nux >= 100)) { // X -
																												// tnt
				expl = getImage("images/tnt.png");
				if (sounds == true)
					s_tnt.play();
				ewidth = 250;
				eframes = 40;
				explx = digx - 90;
				exply = digy - 150;
				expls = true;
				if (tnt > 0)
					tnt--;
				else
					nux -= 100;
				for (int i = 0; i < SHM; i++)
					if (grexists[i] == false) {
						grexists[i] = true;
						grxspd[i] = 20 * Math.random() - 10;
						gryspd[i] = 20 * Math.random() - 10;
						grx[i] = digx;
						gry[i] = digy;
						grscale[i] = (int) Math.round(10 * Math.random() + 10);
						grtype[i] = 0;
					}
				int stx = iposx, endx = iposx;
				if (iposx > 0)
					stx = iposx - 1;
				if (iposx > 1)
					stx = iposx - 2;
				if (iposx < 47)
					endx = iposx + 1;
				if (iposx < 46)
					endx = iposx + 2;
				if (posy > 1000 && earthq == false) {
					double t1 = Math.random(), t2 = 0.00003 * posy;
					if (t1 < t2) {
						eqtimr = 0;
						earthq = true;
						EarthQuake();
					}
				}
				explos(2, stx, endx);
				magmaFlow();
				redraw();
			} else if (key == 'A' && hullfix > 0 && hull > 0 && digtimr == 0) { // A - hull fix
				hullfix--;
				if (hull - 250 < 0)
					hull = 0;
				else
					hull -= 250;
			} else if (key == 'S' && drillfix > 0 && drill < drillmax && digtimr == 0) { // S - drill fix
				drillfix--;
				drill = drillmax;
			} else if (key == 'Q' && tel1 > 0 && depth <= 8000 && digtimr == 0) { // Q - teleport 1
				teltimr = 1;
				telimg = getImage("images/tel1.png");
				tel1--;
				if (sounds == true)
					s_teleport.play();
			} else if (key == 'W' && tel2 > 0 && digtimr == 0) { // W - teleport 2
				teltimr = 1;
				telimg = getImage("images/tel2.png");
				tel2--;
				if (sounds == true)
					s_teleport.play();
			} else if (key == 16 && jet == 1)
				flame = !flame; // shift - jet booster
			else if (key == 45) {
				gamespd++;
				gspdtimr = 1;
			} // -
			else if (key == 61 && gamespd > 15) {
				gamespd--;
				gspdtimr = 1;
			} // +
			else if (key == 49 && sbomb == false && sonb > 0 && battery + fuel >= 70) { // 1 - sonic bomb
				sonb--;
				sbomb = true;
				stimr = 0;
				sbombx = digx + 40;
				sbomby = digy - 10;
				if (battery >= 70)
					battery -= 70;
				else {
					fuel -= (70 - battery);
					battery = 0;
				}
				if (sounds == true)
					s_sonicbomb.play();
			} else if (key == 50 && ibomb == false && iceb > 0 && battery + fuel >= 100) { // 2 - ice bomb
				iceb--;
				ibomb = true;
				itimr = 0;
				ibombx = digx + 40;
				ibomby = digy - 10;
				if (battery >= 100)
					battery -= 100;
				else {
					fuel -= (100 - battery);
					battery = 0;
				}
				if (sounds == true)
					s_icebomb.play();
			} else if (key == 51 && rbomb == false && radb > 0 && battery + fuel >= 150) { // 3 - radiation bomb
				radb--;
				rbomb = true;
				rtimr = 0;
				rbombx = digx + 40;
				rbomby = digy - 10;
				if (battery >= 150)
					battery -= 150;
				else {
					fuel -= (150 - battery);
					battery = 0;
				}
			} else if (key == 'M') { // M - inventory
				status = true;
				transImages();
				mineralprofit = makeString(getMineralProfit());
				if (logc > 0) {
					log_cur = logc - 1;
					loadDataLog(logarr[log_cur]);
				}
			} else if (key == 'V') { // V - Shield
				if (shieldx == false && shield > 0) {
					shieldx = true;
					shield--;
					if (sounds == true)
						s_shield.loop();
				}
			} else if (key == 'C') { // C - mineral processor
				if (processor == true) {
					processor = false;
					cursor = getImage("images/black_light.png");
				} else {
					processor = true;
					cursor = getImage("images/green_light.png");
				}
			}
		}
		/* swim */else if (menu == false && iposy >= 3000) { // swim
			if (key == 10 && nux >= 9000) { // enter - detonation
				nucb = true;
				nucbx = digx;
				nucby = digy;
				nuctimr = 0;
				nucrad = 25;
				nux -= 9000;
				if (depth > detd - 200 && depth < detd + 200) {
					if (detd == 85200)
						detd = 102300;
					else if (detd == 102300)
						detd = 105000;
					else if (detd == 105000)
						detd = 147300;
					else if (detd == 147300)
						detd = 162500;
					else if (detd == 162500)
						detd = 0;
				}
				if (sounds == true)
					s_tnt.play();
			} else if (key == 'Z')
				zkey = true;
			else if (key == 'X')
				xkey = true;
			else if (key == 32 && nux >= 100) { // space bar - TNT
				expl = getImage("images/tnt.png");
				ewidth = 250;
				eframes = 40;
				explx = digx - 120;
				exply = digy - 125;
				expls = true;
				nux -= 100;
				if (sounds == true)
					s_tnt.play();
			}
		} else if (startpage == false) {
			// menu
			/* menu */ if (key == 38) { // up
				if (sely > 0)
					sely--;
				else
					sely = selymax;
				if (tab == 3)
					loadGadgetIcon();
				if (sounds == true)
					s_beep.play();
			} else if (key == 37) { // left
				if (selx > 0)
					selx--;
				else
					selx = 7;
				if (sounds == true)
					s_beep.play();
			} else if (key == 39) { // right
				if (selx < 7)
					selx++;
				else
					selx = 0;
				if (sounds == true)
					s_beep.play();
			} else if (key == 40) { // down
				if (sely < selymax)
					sely++;
				else
					sely = 0;
				if (tab == 3)
					loadGadgetIcon();
				if (sounds == true)
					s_beep.play();
			} else if (key == 10 && pop_up == false && end == false) { // enter - tab
				selx = 0;
				sely = 0;
				if (tab < 4)
					tab++;
				else
					tab = 1;
				if (tab == 4 && highscores == null)
					tab = 1;
				if (tab == 1)
					selymax = 5; // repairs
				else if (tab == 2)
					selymax = 6; // upgrades
				else if (tab == 3) { // gadgets
					selymax = 16;
					if (mith >= 150 && unob >= 75 && adam >= 100)
						selymax = 17; // explorer
				}
				if (tab == 1) { // repairs
					shop = getImage("images/repairs.jpg");
					cursor = getImage("images/repairs_cursor.png");
				} else if (tab == 2) { // upgrades
					// selstr1=StatHolder.getUpgradeName(7*selx+sely);
					displayEvent();
					shop = getImage("images/upgrades.jpg");
					cursor = getImage("images/upgrades_cursor.png");
					ximgs[0] = getImage("images/upgrades_avail.png");
					ximgs[1] = getImage("images/upgrades_unav.png");
					ximgs[2] = getImage("images/upgrades_big.png");
				} else if (tab == 3) { // gadgets
					shop = getImage("images/gadgets.jpg");
					cursor = getImage("images/blue_light.png");
					cursor1 = getImage("images/green_light.png");
					ximgs[0] = getImage("images/black_light.png");
					ximgs[1] = getImage("images/ship_row.png");
					ximgs[2] = getImage("images/x_minerals.png");
					loadGadgetIcon();
					box1 = getImage("images/gadget_highlight.png");
				} else if (tab == 4) { // high scores
					shop = getImage("images/highscores.jpg");
				}
			} else if (key == 10 && pop_up == true) { // enter - kill pop-up
				pop_up = false;
				popup = null;
			} else if (key == 27 && end == false) { // esc - exit
				digx = 570;
				posx = 43.6;
				menu = false;
				loadGameTiles();
				timr1 = 0;
				etimr = 0;
				highscores = null;
				if (explorer == true && transy < 18000) {
					trans = true;
					transy = 10000;
				}
				if (processor == true)
					cursor = getImage("images/green_light.png");
				else
					cursor = getImage("images/black_light.png");
				if (music == true) {
					theme.stop();
					theme = new Sound("images/Sounds/game_theme.mid");
					theme.loop();
				}
				if (sounds == true)
					s_wind.loop();
				shop = null;
				tab = 1;
				if ((minprof - getMineralProfit()) >= 200 && Math.random() < 0.2 && is_mission == false
						&& explorer == false)
					newMission();
			} else if (key == 32) { // space
				if (tab == 1)
					repairsEvent();
				else if (tab == 2)
					upgradesEvent();
				else if (tab == 3)
					gadgetsEvent();
				/* high scores */ else if (tab == 4 && score_name.length() > 4 && highscoresent == false) {
					try {
						highscoresent = true;
						String hostName = InetAddress.getLocalHost().getHostAddress(); // IP adress
						long systime = System.currentTimeMillis() / 1000; // time
						// check for dublicates
						boolean dublicate = false;
						for (int i = 0; i < highscores.size(); i++) {
							Score sc = (Score) highscores.elementAt(i);
							int time1 = Integer.parseInt(sc.etime);
							if (hostName.compareTo(sc.ip) == 0 && systime < time1 + 86400) {
								dublicate = true;
								break;
							}
						}
						if (dublicate == false) {
							URL urlread = new URL("http://mlu.scorpiontek.org/highscore.php?action=submit&"
									+ "admin_user=hsadd&admin_pass=mlu4ever&name=" + score_name + "&score=" + score
									+ "&time=" + time + "&encrypt=thing&field1=" + hostName + "&field2=" + systime
									+ "&access_code=6589415766584932");
							InputStream in = urlread.openStream();
							BufferedReader br = new BufferedReader(new InputStreamReader(in));
							String str1 = "";
							int dummy;
							while ((str1 = br.readLine()) != null)
								dummy = 1;
							highscores = new Vector();
							loadHighScores();
						}
					} catch (IOException ex1) {
					}
				}
			} // end space - buy
			if (tab == 2)
				displayEvent();
		} // end menu=true, startpage=false
		else { // startpage=true
			if (key == 38) { // up
				if (sely > 0)
					sely--;
				else
					sely = 5;
				if (sounds == true)
					s_beep.play();
			} else if (key == 40) { // down
				if (sely < 5)
					sely++;
				else
					sely = 0;
				if (sounds == true)
					s_beep.play();
			} else if (key == 37) { // left
				if (sely == 3) {
					if (music == false) {
						music = true;
						theme.loop();
					} else {
						music = false;
						theme.stop();
					}
				} else if (sely == 4)
					sounds = !sounds;
				else if (sely == 5) {
					if (level > 1)
						level--;
					else
						level = 3;
				}
				if (sounds == true && s_beep == null) {
					loadSounds();
					s_beep.play();
				}
			} else if (key == 39) { // right
				if (sely == 3) {
					if (music == false) {
						music = true;
						theme.loop();
					} else {
						music = false;
						theme.stop();
					}
				} else if (sely == 4)
					sounds = !sounds;
				else if (sely == 5) {
					if (level < 3)
						level++;
					else
						level = 1;
				}
				if (sounds == true && s_beep == null) {
					loadSounds();
					s_beep.play();
				}
			} else if (key >= 'A' && key <= 'Z') {
				if (inputstr.length() < 13)
					inputstr += (char) (key + 32); // type in
			} else if (key >= '0' && key <= '9') {
				if (inputstr.length() < 13)
					inputstr += (char) key; // type in
			} else if (key == 8 && inputstr.length() > 0)
				inputstr = inputstr.substring(0, inputstr.length() - 1); // backspace
			else if (key == 10 && pop_up == true)
				pop_up = false;
			else if (key == 10 && pop_up == false && inputstr.length() > 2) { // enter
				if (sely == 0) {
					msgstr = "";
					startpage = false;
					menu = false;
					genMap();
					stpage = null;
					box1 = null;
					box2 = null;
					box3 = null; // delete images
				} else if (sely == 1) {
					try {
						File file1 = new File(getJarPath() + inputstr + ".ml");
						if (file1.exists() == true) {
							msgstr = "";
							loadMap();
							stpage = null;
						} else {
							inputstr = "";
							pop_up = true;
							popup = getImage("images/file_not_found.jpg");
						}
					} catch (Exception ex) {
					}
				} else if (sely == 2) {
					if (inputstr.compareTo("filthyrich") == 0) {
						msgstr = "$1,000,000";
						cheat = 1;
					} else if (inputstr.compareTo("enginefire") == 0) {
						msgstr = "Turbo-X Engine";
						cheat = 2;
					} else if (inputstr.compareTo("tankwars") == 0) {
						msgstr = "Super Fuel Tank";
						cheat = 3;
					} else if (inputstr.compareTo("bayofpigs") == 0) {
						msgstr = "Gigantic Cargo Bay";
						cheat = 4;
					} else if (inputstr.compareTo("coolbox") == 0) {
						msgstr = "Liquid Nitrogen Radiator";
						cheat = 5;
					} else if (inputstr.compareTo("hullrat") == 0) {
						msgstr = "Energy-Shielded Hull";
						cheat = 6;
					} else if (inputstr.compareTo("leadpoisoning") == 0) {
						msgstr = "Super-Shield BioX";
						cheat = 7;
					} else if (inputstr.compareTo("toothache") == 0) {
						msgstr = "NanoTube Drill";
						cheat = 8;
					} else if (inputstr.compareTo("batteryacid") == 0) {
						msgstr = "Kryptonite Battery";
						cheat = 9;
					} else if (inputstr.compareTo("hollandtunnel") == 0) {
						msgstr = "12,000ft. Vertical Tunnel";
						cheat = 10;
					} else if (inputstr.compareTo("loveofmine") == 0) {
						msgstr = "St. Valentine's Special";
						cheat = 11;
					} else {
						pop_up = true;
						popup = getImage("images/wrong_password.jpg");
					}
					inputstr = "";
				}
				moneystr = makeString(money);
				scorestr = makeString(score);
			}
		}
		if (tab == 4) { // Online Scores
			int size = highscores.size();
			if (key == 38 && scroll > 0)
				scroll--; // up
			else if (key == 40 && scroll < (size - 28))
				scroll++; // down
			else if (key >= 'A' && key <= 'Z') {
				if (score_name.length() < 13)
					score_name += (char) (key + 32); // type in
			} else if (key >= '0' && key <= '9') {
				if (score_name.length() < 13)
					score_name += (char) key; // type in
			} else if (key == 8 && score_name.length() > 0)
				score_name = score_name.substring(0, score_name.length() - 1); // backspace
		}
	}

	public void KeyUp(KeyEvent e) { // key up event
		int key = e.getKeyCode();
		if (key == 38) {
			up_key = false;
			gastimr = 0;
			if (sounds == true) {
				s_prop.stop();
				s_jet.stop();
			}
		} else if (key == 37)
			left_key = false;
		else if (key == 39)
			right_key = false;
		else if (key == 40)
			down_key = false;
		else if (key == 17)
			ctrl = false;
		else if (key == 'Z')
			zkey = false;
		else if (key == 'X')
			xkey = false;
	}

	void repairsEvent() {
		if (sely == 2 || sely == 0) { // sell minerals
			money += getMineralProfit();
			moneystr = makeString(money);
			cargo = 0;
			rx = 0;
			for (int i = 1; i < 45; i++)
				minerals[i] = 0;
			if (explorer == true)
				cargo = bomb1 * 10 + bomb2 * 20 + bomb3 * 40;
			mineralprofit = makeString(getMineralProfit());
		}
		if (sely == 3 || sely == 0) { // refuel
			double amount = 2.5 * (-fuel + fuelmax); // to pay
			if (money >= amount) {
				fuel = fuelmax;
				money -= (int) Math.round(amount);
			} else {
				fuel += 2 * money / 5;
				money = 0;
			}
			moneystr = makeString(money);
		}
		if (sely == 5 || sely == 0) { // fix hull
			double amount = 20 * hull;
			if (money >= amount) {
				hull = 0;
				money -= (int) Math.round(amount);
			} else {
				hull -= money / 20;
				money = 0;
			}
			moneystr = makeString(money);
		}
		if (sely == 4 || sely == 0) { // fix drill
			double amount = 3.0 * (-drill + drillmax);
			if (money >= amount) {
				drill = drillmax;
				money -= (int) Math.round(amount);
			} else {
				drill += money / 3;
				money = 0;
			}
			moneystr = makeString(money);
		}
		if (sely == 1) {
			timr1 = 1;
			gameSave();
			popup = getImage("images/game_saved.jpg");
			pop_up = true;
		}
		repairscost = makeString(getRepairsCost());
	}

	void upgradesEvent() {
		int idx = 7 * selx + sely;
		selprice = StatHolder.getUpgradePrice(idx);
		if (money >= selprice && upgrades[selx][sely] == false) {
			if (selx == 0) {
				engmax = selamount;
				engine = sely + 1;
			} // engine
			else if (selx == 1) {
				fuelmax = selamount;
				fuel = fuelmax;
				fueltank = sely + 1;
			} // fuel tank
			else if (selx == 2) {
				cargomax = selamount;
				cargobay = sely + 1;
			} // cargo bay
			else if (selx == 3) { // radiator
				tempmax = selamount;
				radiator = sely + 1;
				if (sely == 1)
					radf = 0.002;
				else if (sely == 2)
					radf = 0.003;
				else if (sely == 3)
					radf = 0.006;
				else if (sely == 4)
					radf = 0.01;
				else if (sely == 5)
					radf = 0.02;
				else if (sely == 6)
					radf = 0.03;
			} else if (selx == 4) {
				hullmax = selamount;
				hull = 0;
				hullx = sely + 1;
				loadHull();
			} // hull
			else if (selx == 5) {
				biomax = selamount;
				biox = sely + 1;
			} // bio-x
			else if (selx == 6) {
				drillmax = selamount;
				drill = drillmax;
				drillx = sely + 1;
				loadDrill();
			} // drill
			else {
				batmax = selamount;
				batx = sely + 1;
			} // battery
			money -= selprice;
			moneystr = makeString(money);
			for (int i = 0; i <= sely; i++)
				upgrades[selx][i] = true;
			setWeight();
		} else if (money < StatHolder.getUpgradePrice(idx) && upgrades[selx][sely] == false) {
			popup = getImage("images/not_enough_cash.jpg");
			pop_up = true;
		}
	}

	void gadgetsEvent() {
		pop_up = false;
		if (sely == 0 && money >= 20000) {
			tel1++;
			money -= 20000;
		} else if (sely == 1 && money >= 100000) {
			tel2++;
			money -= 100000;
		} else if (sely == 2 && dyn < 50) {
			if (money >= 2000) {
				dyn++;
				money -= 2000;
			} else
				pop_up = true;
		} else if (sely == 3 && tnt < 30) {
			if (money >= 10000) {
				tnt++;
				money -= 10000;
			} else
				pop_up = true;
		} else if (sely == 4 && money >= 10000) {
			shield++;
			money -= 10000;
		} else if (sely == 5 && hullfix < 20) {
			if (money >= 20000) {
				hullfix++;
				money -= 20000;
			} else
				pop_up = true;
		} else if (sely == 6 && drillfix < 20) {
			if (money >= 100000) {
				drillfix++;
				money -= 100000;
			} else
				pop_up = true;
		} else if (sely == 7 && sonb < 20) {
			if (money >= 30000) {
				sonb++;
				money -= 30000;
			} else
				pop_up = true;
		} else if (sely == 8 && iceb < 20) {
			if (money >= 50000) {
				iceb++;
				money -= 50000;
			} else
				pop_up = true;
		} else if (sely == 9 && money >= 75000 && radb < 20) {
			if (money >= 75000) {
				radb++;
				money -= 75000;
			} else
				pop_up = true;
		} else if (sely == 10 && money >= 1000 && coalb == 0) {
			coalb = 1;
			money -= 1000;
		} else if (sely == 11 && money >= 5000 && petrolr == 0) {
			petrolr = 1;
			money -= 5000;
		} else if (sely == 12 && money >= 50000 && gasb == 0) {
			gasb = 1;
			money -= 50000;
		} else if (sely == 13 && money >= 200000 && nuc == 0) {
			nuc = 1;
			money -= 200000;
		} else if (sely == 14 && money >= 1000000 && nucx == 0) {
			nucx = 1;
			money -= 1000000;
		} else if (sely == 15 && money >= 3000 && jet == 0) {
			jet = 1;
			money -= 3000;
		} else if (sely == 16 && money >= 150000 && tractor == 0) {
			tractor = 1;
			money -= 150000;
		} else if (sely == 17 && money >= 100000000 && explorer == false) {
			money -= 100000000;
			explorer = true;
			loadImages2();
			cargomax = 20000;
			fuelmax = 6000;
			engmax = 5000;
			fuel = 6000;
			mith = 0;
			unob = 0;
			adam = 0;
		}
		if (pop_up == true)
			popup = getImage("images/not_enough_cash.jpg");
		moneystr = makeString(money);
	}

	void displayEvent() {
		selstr3 = "$" + makeString(StatHolder.getUpgradePrice(7 * selx + sely));
		selstr1 = StatHolder.getUpgradeName(7 * selx + sely);
		selamount = StatHolder.getUpgradeAmount(7 * selx + sely);
		if (selx == 0) {
			selstr2 = "" + selamount + " HP";
		} else if (selx == 1) {
			selstr2 = "" + selamount + " L";
		} else if (selx == 2) {
			selstr2 = "" + selamount + " lbs.";
		} else if (selx == 3) {
			selstr2 = "" + selamount + " F";
		} else if (selx == 4) {
			selstr2 = "" + selamount + " Hits";
		} else if (selx == 5) {
			selstr2 = "" + selamount + " Rx";
		} else if (selx == 6) {
			selstr2 = "" + selamount + " DL";
		} else if (selx == 7) {
			selstr2 = "" + selamount + " MW";
		}
	}

	void inventoryEvent() {
		if (trans == true && sely == 5 && selx == 1 && pop_up == false) {
			trans = false; // exit
			if (transy == 20000) { // load high scores
				loadHighScores();
				if (highscores != null) {
					trans = false;
					menu = true;
					startpage = false;
					tab = 4; // high-scores shop
					shop = getImage("images/highscores.jpg");
					score_name = "";
					labl2 = false;
				}
			} else {
				transc++;
				transy = transarr[transc];
			}
		} else if (selx == 1 && sely == 1) { // previous message
			if (trans_cur > 0)
				trans_cur--;
		} else if (selx == 1 && sely == 3) { // next message
			if (trans_cur < transc && trans == true)
				trans_cur++;
			else if (trans_cur < transc - 1 && status == true)
				trans_cur++;
		} else if (selx == 1 && sely == 4) { // last message
			if (trans == true)
				trans_cur = transc;
			else
				trans_cur = transc - 1;
		} else if (selx == 1 && sely == 0) { // first message
			trans_cur = 0;
		} else if (selx == 0) {
			if (sely == 0)
				log_cur = 0;
			else if (sely == 1 && log_cur > 0)
				log_cur--;
			else if (sely == 3 && log_cur < logc - 1)
				log_cur++;
			else if (sely == 4)
				log_cur = logc - 1;
		}
		if (sely == 5) {
			status = false;
			trans = false;
		}
		if (selx == 1) {
			String msgstr = loadTrans(transarr[trans_cur]);
			panel = new TextPanel(msgstr, 170, 130, 65, 15);
			if (transarr[trans_cur] == 5 || transarr[trans_cur] == 10000)
				panel.addLine("Good luck!");
		} else if (selx == 0 && logc > 0) {
			log_cur = logc - 1;
			loadDataLog(logarr[log_cur]);
		}
	}

	// Mouse
	// ------------------------------------------------------------------------------------------
	public void MouseDown(MouseEvent e) { // detect mouse position
		int x = e.getX(), y = e.getY();
		if (menu == true && startpage == false) {
			int memx = selx, memy = sely;
			if (tab == 1 && x > 296 && x < 485) { // repairs
				if (y > 158 && y < 210)
					sely = 0;
				else if (y > 217 && y < 269)
					sely = 1;
				else if (y > 279 && y < 330)
					sely = 2;
				else if (y > 339 && y < 390)
					sely = 3;
				else if (y > 400 && y < 451)
					sely = 4;
				else if (y > 458 && y < 511)
					sely = 5;
				if (sounds == true)
					s_beep.play();
				if (memy == sely)
					repairsEvent();
			} else if (tab == 2) { // upgrades
				for (int i = 0; i < 8; i++)
					for (int j = 0; j < 7; j++)
						if (x > 19 + i * 83 && x < 19 + i * 83 + 69 && y > 106 + j * 69 && y < 106 + j * 69 + 64) {
							selx = i;
							sely = j;
							if (sounds == true)
								s_beep.play();
						}
				displayEvent();
				if (memy == sely && memx == selx)
					upgradesEvent();
			} else if (tab == 3 && x > 330 && x < 720) { // gadgets
				int y1 = 18;
				if (y > 161 && y < 161 + y1)
					sely = 0;
				else if (y > 180 && y < 180 + y1)
					sely = 1;
				else if (y > 197 && y < 197 + y1)
					sely = 2;
				else if (y > 215 && y < 215 + y1)
					sely = 3;
				else if (y > 251 && y < 251 + y1)
					sely = 4;
				else if (y > 269 && y < 269 + y1)
					sely = 5;
				else if (y > 305 && y < 305 + y1)
					sely = 6;
				else if (y > 323 && y < 323 + y1)
					sely = 7;
				else if (y > 358 && y < 358 + y1)
					sely = 8;
				else if (y > 376 && y < 376 + y1)
					sely = 9;
				else if (y > 394 && y < 394 + y1)
					sely = 10;
				else if (y > 412 && y < 412 + y1)
					sely = 11;
				else if (y > 430 && y < 430 + y1)
					sely = 12;
				else if (y > 467 && y < 467 + y1)
					sely = 13;
				else if (y > 485 && y < 485 + y1)
					sely = 14;
				else if (y > 503 && y < 503 + y1 && ((mith >= 150 && unob >= 75 && adam >= 100) || explorer == true))
					sely = 15;
				if (memy == sely)
					gadgetsEvent();
				if (sounds == true)
					s_beep.play();
			}
		} else if (menu == false && status == true) {
			if (x > 102 && x < 141) { // sely buttons
				if (y > 98 && y < 136) {
					sely = 0;
					inventoryEvent();
				} else if (y > 160 && y < 198) {
					sely = 1;
					inventoryEvent();
				} else if (y > 215 && y < 252) {
					sely = 2;
					inventoryEvent();
				} else if (y > 270 && y < 307) {
					sely = 3;
					inventoryEvent();
				} else if (y > 329 && y < 367) {
					sely = 4;
					inventoryEvent();
				} else if (y > 399 && y < 436) {
					sely = 5;
					inventoryEvent();
				}
			} else if (y > 449 && y < 484) { // selx buttons
				boolean b = false;
				if (x > 156 && x < 322) {
					selx = 0;
					b = true;
				} else if (x > 333 && x < 494) {
					selx = 1;
					b = true;
				} else if (x > 507 && x < 667) {
					selx = 2;
					b = true;
				}
				if (b == true) {
					sely = 0;
					if (status == true && transc > 0 && selx == 1) { // trans
						trans_cur = transc - 1;
						String msgstr = loadTrans(transarr[trans_cur]);
						panel = new TextPanel(msgstr, 170, 130, 65, 15);
					} else if (selx == 0) { // datalog
						loadDataLog(logarr[log_cur]);
					}
				}
			} else if (x > 632 && x < 658 && y > 107 && y < 132) { // toggle music
				if (music == true) {
					music = false;
					theme.stop();
				} else {
					theme = new Sound("images/Sounds/game_theme.mid");
					theme.loop();
					music = true;
				}
			} else if (x > 632 && x < 658 && y > 150 && y < 176) {
				if (sounds == true) {
					sounds = false;
					if (is_lava == true) {
						is_lava = false;
						s_lava.stop();
					}
				} else {
					sounds = true;
					if (posy > 1200) {
						is_lava = true;
						s_lava.loop();
					}
				}
			}
		}
	}

	// paint
	// ----------------------------------------------------------------------------------------------------------------
	public void paint(Graphics g) {
		if (menu == false) {
			if (iposy < 3000) {
				if (earthq == false) {
					if (rdr == true)
						drawField(g);
					else
						g.drawImage(field, 0, 0, this);
				} else { // earthquake
					if (eqtimr % 4 < 2)
						g.drawImage(field, -5, 0, this);
					else
						g.drawImage(field, 5, 0, this);
					for (int i = 0; i < RCK; i++)
						if (rockexists[i] == true)
							g.drawImage(rock, rockx[i], rocky[i], null, this);
				}
				if (framey < 4) { // air
					g.drawImage(sky, sky_x, -50 * framey, null, this);
					if (framex > 28 && framey < 7) {
						if (globe == false) {
							g.drawImage(base, 650 - 50 * (framex - 32), 213 - 50 * framey, null, this);
							if (iposx <= 43 || iposy > 4)
								g.drawImage(gate, 688 - 50 * (framex - 32), 225 - 50 * framey, 46, 23, null, this);
						} else
							g.drawImage(base, 650 - 50 * (framex - 32), 213 - 50 * framey, null, this);
					}
				}
				drawLabel(g);
				drawGr(g);
				if (expls == true)
					drawExpl(g);
				if (tr == true)
					drawTr(g); // tractor beam
				if (explorer == false)
					drawDigger(g);
				else
					drawExplorer(g);
				if (shieldx == true) { // draw shield
					g.drawImage(shield_img, digx - 40, digy - 70, null, this);
					g.setColor(new Color(255, 130, 160));
					g.drawString("" + (200 - shieldtimr), digx + 15, digy - 55);
					shieldtimr++;
					if (battery > 0.05)
						battery -= 0.05;
					else
						fuel -= 0.05;
					if (shieldtimr == 200) {
						shieldx = false;
						shieldtimr = 0;
						if (sounds == true)
							s_shield.stop();
					}
				}
				if (sbomb == true)
					drawSbomb(g);
				if (ibomb == true)
					drawIbomb(g);
				if (rbomb == true)
					drawRbomb(g);
				if (nucb == true)
					drawNucb(g);
				if (explorer == false)
					drawBar1(g);
				else
					drawBar2(g);
				if (trans == true || status == true)
					drawTrans(g);
				if (teltimr > 0)
					g.drawImage(telimg, digx + 10, digy - 60, digx + 70, digy + 40, 60 * (teltimr / 2), 0,
							60 * (teltimr / 2) + 60, 100, null, this);
				if (gspdtimr > 0) { // change game speed
					gspdtimr++;
					if (gspdtimr > 60)
						gspdtimr = 0;
					g.setColor(new Color(100, 200, 83));
					g.setFont(font20);
					g.drawString("" + gamespd + " ms", 380, 30);
				}
				if (timr55 > 0) { // abandoned ship window
					g.drawImage(ximgs[3], 200, 200, null, this);
					g.setColor(Color.black);
					g.setFont(labelfont);
					panel.draw(g);
					timr55++;
					if (timr55 > 100)
						timr55 = 0;
				}
				if (greentimr > 0) { // draw green screen
					float alp = (float) (0.003 * greentimr);
					if (alp > 1.0)
						alp = 1.0f;
					AlphaComposite ac = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, alp);
					Graphics2D g2 = (Graphics2D) g;
					g2.setTransform(new AffineTransform());
					g2.setComposite(ac);
					g2.setColor(new Color(0, 255, 0));
					g2.fillRect(0, 0, rw, rh);
					g2.setComposite(alphanull);
					greentimr++;
					if (greentimr > 300) {
						msg = true;
						msgstr = "RADIATION EXPOSURE";
					}
				}
				if (msg == true) { // damage message
					msgtimr++;
					g.setFont(font20);
					g.setColor(c_red);
					FontMetrics fm = g.getFontMetrics();
					int width = fm.stringWidth(msgstr);
					g.drawString(msgstr, rw / 2 - width / 2, rh / 2);
					if (msgtimr > 80) {
						theme.stop();
						menu = true;
						startpage = true;
						restart();
					}
				}
			}
			/* swim */else { // swim
				timr1++;
				fallspd -= vspeed;
				if (fallspd < 0)
					fallspd = rh;
				/* field */ g.drawImage(field, 0, (int) Math.round(fallspd), null, this);
				g.drawImage(field, 0, (int) Math.round(fallspd) - rh, null, this);
				if (expls == true)
					drawExpl(g);
				/* rocks */ for (int i = 0; i < 15; i++)
					if (grexists[i] == true) {
						if (grtype[i] == 1)
							g.drawImage(imgs[1], grx[i], gry[i], 268 * grscale[i] / 100, 369 * grscale[i] / 100, null,
									this);
						else if (grtype[i] == 2)
							g.drawImage(imgs[2], grx[i], gry[i], 241 * grscale[i] / 100, 300 * grscale[i] / 100, null,
									this);
						else if (grtype[i] == 3)
							g.drawImage(imgs[3], grx[i], gry[i], 404 * grscale[i] / 100, 346 * grscale[i] / 100, null,
									this);
					}
				/* ship */ if (explorer == true) {
					if (right_side == false) {
						if (timr1 % 3 == 0)
							g.drawImage(fly_l0, digx - 20, digy - 20, null, this);
						else if (timr1 % 3 == 1)
							g.drawImage(fly_l1, digx - 20, digy - 20, null, this);
						else if (timr1 % 3 == 2)
							g.drawImage(fly_l2, digx - 20, digy - 20, null, this);
						else if (timr1 % 3 == 3)
							g.drawImage(fly_l3, digx - 20, digy - 20, null, this);
					} else {
						if (timr1 % 3 == 0)
							g.drawImage(fly_r0, digx - 20, digy - 20, null, this);
						else if (timr1 % 3 == 1)
							g.drawImage(fly_r1, digx - 20, digy - 20, null, this);
						else if (timr1 % 3 == 2)
							g.drawImage(fly_r2, digx - 20, digy - 20, null, this);
						else if (timr1 % 3 == 3)
							g.drawImage(fly_r3, digx - 20, digy - 20, null, this);
					}
				} else { // ship
					int hy = 0, hx = 0;
					vert(g);
					if (right_side == true)
						hy = 6;
					else {
						hy = 5;
						hx = 11;
					}
					if (right_side == true)
						g.drawImage(hull_r, digx + 12 + hx + hlx, digy - 33 + hy + hly, null, this);
					else
						g.drawImage(hull_l, digx + hx + hlx, digy - 33 + hy + hly, null, this);
				}
				/* nucb */ if (nucb == true) {
					Graphics2D g2 = (Graphics2D) g;
					g2.setTransform(new AffineTransform());
					g2.setComposite(alpha);
					g2.setColor(new Color(255, 200, 70));
					g2.fillOval(nucbx - nuctimr * 20, nucby - nuctimr * 20, nuctimr * 40, nuctimr * 40);
					g2.setComposite(alphanull);
					nuctimr++;
					if (nuctimr == nucrad) {
						nucb = false;
						if (detd == 0) {
							digx = 390;
							digy = 250;
							posx = 23;
							posy = 4;
							framex = 15;
							framey = 0;
							mode = 1;
							iposy = 4;
							loadGameTiles();
							backColor();
							redraw();
							trans = true;
							transy = 20000;
							earthq = false;
						}
					}
				}
				if (msg == true) {
					msgtimr++;
					g.setFont(font20);
					g.setColor(c_red);
					FontMetrics fm = g.getFontMetrics();
					int width = fm.stringWidth(msgstr);
					g.drawString(msgstr, rw / 2 - width / 2, rh / 2);
					if (msgtimr > 80) {
						menu = true;
						startpage = true;
						restart();
					}
				}
				// drawShmootz(g);
				drawBar2(g);
				// g.setFont(dfont);g.setColor(c_black);g.drawString("detd:"+detd,400,30);
			}
		}
		/* menu */else if (startpage == false) { // menu
			int x1 = 20, y1 = 450, inc1 = 18;
			g.setFont(barfont);
			g.setColor(c_black);
			// g.drawString("Money",500,50);g.drawString(moneystr,650,50);
			x1 = 10;
			y1 = 50;
			if (tab == 1) { // repairs
				g.setColor(new Color(184, 156, 61));
				g.drawImage(shop, 0, 0, null, this);
				x1 = 37;
				y1 = 173;
				for (int i = 1; i < 42; i++)
					if (minerals[i] > 0) {
						g.drawString(StatHolder.getName(i), x1, y1);
						g.drawString("" + minerals[i], x1 + 110, y1);
						g.drawString("$ " + minerals[i] * StatHolder.getPrice(i) * money_factor / 10, x1 + 145, y1);
						y1 += 16;
					}
				x1 = 300;
				y1 = 70;
				inc1 = 20;
				g.drawImage(cursor, 286, 150 + sely * 59, null, this);
				g.drawString(cargo + " lbs", 382, 324);
				g.drawString(mineralprofit, 639, 198);
				g.drawString(Math.round(fuel) + " lbs", 382, 383);
				g.drawString("" + Math.round(drill), 382, 442);
				g.drawString("" + hull, 382, 501);
				g.drawString(repairscost, 639, 262);
				g.drawString(moneystr, 639, 324);
			} else if (tab == 2) { // upgrades
				g.drawImage(shop, 0, 0, null, this);
				for (int i = 0; i < 8; i++)
					for (int j = 0; j < 7; j++) {
						g.drawImage(imgs[7 * i + j], 19 + i * 83, 106 + j * 69, 69, 64, null, this);
						if (upgrades[i][j] == true)
							g.drawImage(ximgs[1], 5 + i * 83, 95 + j * 69, null, this);
						else
							g.drawImage(ximgs[0], 5 + i * 83, 95 + j * 69, null, this);
					}
				g.drawImage(cursor, 5 + selx * 83, 95 + sely * 69, null, this);
				g.drawImage(imgs[7 * selx + sely], 685, 47, 100, 100, null, this);
				g.drawImage(ximgs[2], 678, 40, null, this);
				g.setFont(narrowfont);
				g.setColor(new Color(218, 174, 184));
				g.drawString(selstr1, 690, 200);
				String updt = "";
				if (selx == 0)
					updt = "Engine";
				else if (selx == 1)
					updt = "Fuel Tank";
				else if (selx == 2)
					updt = "Cargo Bay";
				else if (selx == 3)
					updt = "Radiator";
				else if (selx == 4)
					updt = "Hull";
				else if (selx == 5)
					updt = "Bio-X Shielding";
				else if (selx == 6)
					updt = "Drill";
				else
					updt = "Battery";
				g.drawString(updt, 690, 216);
				g.drawString(selstr2, 690, 232);
				g.setFont(barfont);
				g.drawString(selstr3, 690, 248);
				if (upgrades[selx][sely] == true) { // bought
					g.drawString("Already", 690, 280);
					g.drawString("Purchased", 690, 296);
				} else if (StatHolder.getUpgradePrice(selx * 7 + sely) > money) { // unavailable
					g.drawString("Unavailable", 690, 280);
				} else
					g.drawString("Available", 690, 280);
				g.setColor(c_bar);
				g.setFont(bardraw);
				g.drawString(moneystr, 41, 29);
			} else if (tab == 3) { // gadgets
				x1 = 688;
				y1 = 70;
				inc1 = 20;
				g.setFont(barfont);
				g.setColor(new Color(180, 255, 180));
				g.drawImage(shop, 0, 0, null, this);
				if ((mith >= 150 && unob >= 75 && adam >= 100) || explorer == true) {
					g.drawImage(ximgs[1], 340, 522, null, this); // shiprow
					g.drawImage(ximgs[2], 20, 320, null, this); // x-minerals
					g.drawImage(ximgs[0], 307, 520, null, this); // green light
					g.drawImage(ximgs[0], 539, 520, null, this);
					g.drawImage(ximgs[0], x1, 520, null, this);
					g.drawString("" + 10 * mith, 192, 432);
					g.drawString("" + 40 * unob, 192, 475);
					g.drawString("" + 50 * adam, 192, 514);
				}
				for (int i = 0; i < 4; i++) {
					g.drawImage(ximgs[0], 307, 141 + 18 * i, null, this); // 155
					g.drawImage(ximgs[0], 539, 141 + 18 * i, null, this);
					g.drawImage(ximgs[0], x1, 141 + 18 * i, null, this);
				}
				for (int i = 4; i < 7; i++) {
					g.drawImage(ximgs[0], 307, 231 + 18 * (i - 4), null, this); // 246
					g.drawImage(ximgs[0], 539, 231 + 18 * (i - 4), null, this);
					g.drawImage(ximgs[0], x1, 231 + 18 * (i - 4), null, this);
				}
				for (int i = 7; i < 10; i++) {
					g.drawImage(ximgs[0], 307, 303 + 18 * (i - 7), null, this); // 299
					g.drawImage(ximgs[0], 539, 303 + 18 * (i - 7), null, this);
					g.drawImage(ximgs[0], x1, 303 + 18 * (i - 7), null, this);
				}
				for (int i = 10; i < 15; i++) {
					g.drawImage(ximgs[0], 307, 375 + 18 * (i - 10), null, this); // 353
					g.drawImage(ximgs[0], 539, 375 + 18 * (i - 10), null, this);
					g.drawImage(ximgs[0], x1, 375 + 18 * (i - 10), null, this);
				}
				for (int i = 15; i < 17; i++) {
					g.drawImage(ximgs[0], 307, 483 + 18 * (i - 15), null, this); // 463
					g.drawImage(ximgs[0], 539, 483 + 18 * (i - 15), null, this);
					g.drawImage(ximgs[0], x1, 483 + 18 * (i - 15), null, this);
				}
				// ------------------------------------------------------------------
				if (sely < 4) {
					g.drawImage(box1, 328, 145 + 18 * sely, null, this);
					g.drawImage(cursor1, 307, 141 + 18 * sely, null, this); // green light
					g.drawImage(cursor1, 539, 141 + 18 * sely, null, this);
				} else if (sely < 7) {
					g.drawImage(box1, 328, 235 + 18 * (sely - 4), null, this);
					g.drawImage(cursor1, 307, 231 + 18 * (sely - 4), null, this); // green light
					g.drawImage(cursor1, 539, 231 + 18 * (sely - 4), null, this);
				} else if (sely < 10) {
					g.drawImage(box1, 328, 307 + 18 * (sely - 7), null, this);
					g.drawImage(cursor1, 307, 303 + 18 * (sely - 7), null, this); // green light
					g.drawImage(cursor1, 539, 303 + 18 * (sely - 7), null, this);
				} else if (sely < 15) {
					g.drawImage(box1, 328, 379 + 18 * (sely - 10), null, this);
					g.drawImage(cursor1, 307, 375 + 18 * (sely - 10), null, this); // green light
					g.drawImage(cursor1, 539, 375 + 18 * (sely - 10), null, this);
				} else {
					g.drawImage(box1, 328, 487 + 18 * (sely - 15), null, this);
					g.drawImage(cursor1, 307, 483 + 18 * (sely - 15), null, this); // green light
					g.drawImage(cursor1, 539, 483 + 18 * (sely - 15), null, this);
				}
				if (tel1 > 0) {
					g.drawImage(cursor, x1, 141, null, this);
					g.drawString("" + tel1, 735, 161);
				}
				if (tel2 > 0) {
					g.drawImage(cursor, x1, 159, null, this);
					g.drawString("" + tel2, 735, 179);
				}
				if (dyn > 0) {
					g.drawImage(cursor, x1, 177, null, this);
					g.drawString("" + dyn, 735, 197);
				}
				if (tnt > 0) {
					g.drawImage(cursor, x1, 195, null, this);
					g.drawString("" + tnt, 735, 215);
				}
				if (shield > 0) {
					g.drawImage(cursor, x1, 231, null, this);
					g.drawString("" + shield, 735, 251);
				}
				if (hullfix > 0) {
					g.drawImage(cursor, x1, 249, null, this);
					g.drawString("" + hullfix, 735, 269);
				}
				if (drillfix > 0) {
					g.drawImage(cursor, x1, 267, null, this);
					g.drawString("" + drillfix, 735, 287);
				}
				if (sonb > 0) {
					g.drawImage(cursor, x1, 303, null, this);
					g.drawString("" + sonb, 735, 323);
				}
				if (iceb > 0) {
					g.drawImage(cursor, x1, 321, null, this);
					g.drawString("" + iceb, 735, 341);
				}
				if (radb > 0) {
					g.drawImage(cursor, x1, 339, null, this);
					g.drawString("" + radb, 735, 359);
				}
				if (coalb == 1)
					g.drawImage(cursor, x1, 375, null, this);
				if (petrolr == 1)
					g.drawImage(cursor, x1, 393, null, this);
				if (gasb == 1)
					g.drawImage(cursor, x1, 411, null, this);
				if (nuc == 1)
					g.drawImage(cursor, x1, 429, null, this);
				if (nucx == 1)
					g.drawImage(cursor, x1, 447, null, this);
				if (jet == 1)
					g.drawImage(cursor, x1, 483, null, this);
				if (tractor == 1)
					g.drawImage(cursor, x1, 501, null, this);
				if (explorer == true)
					g.drawImage(cursor, x1, 519, null, this);
				g.drawString(moneystr, 614, 64);
				g.drawImage(ximgs[3], 69, 32, null, this); // gadget icon
			} else if (tab == 4) { // Online Scores
				g.drawImage(shop, 0, 0, null, this);
				g.setFont(labelfont);
				// scroll bar
				int size = highscores.size(), y0 = 162, yscroll = y0, lowentry = size, x0 = 273;
				if (size > 28) {
					yscroll = scroll * 390 / (size - 28) + y0;
					lowentry = 28;
				}
				g.setColor(new Color(44, 14, 12));
				g.fillRect(759, yscroll, 15, 20);
				g.setColor(Color.black);
				g.drawRect(759, yscroll, 15, 15);
				for (int i = scroll; i < scroll + lowentry; i++) {
					Score sc = (Score) highscores.elementAt(i);
					g.drawString("" + (i + 1), x0, 182 + (i - scroll) * 14); // index
					g.drawString(sc.name, x0 + 54, 182 + (i - scroll) * 14); // name
					g.drawString("" + sc.score, x0 + 162, 182 + (i - scroll) * 14); // score
					g.drawString(sc.date, x0 + 281, 182 + (i - scroll) * 14); // date
					g.drawString(sc.MST, x0 + 375, 182 + (i - scroll) * 14); // mars time
				}
				etimr++;
				g.setFont(font20);
				g.setColor(new Color(250, 60, 60));
				if (etimr % 50 < 25)
					g.drawString(score_name, 54, 86);
				else
					g.drawString(score_name + "|", 54, 86);
				g.drawString(scorestr, 539, 86);
			}
		} // end menu=true
		else { // startpage=true
			timr1++;
			g.drawImage(stpage, 0, 0, null, this);
			g.drawImage(box2, 225, 88, null, this);
			g.drawImage(box2, 225, 113, null, this);
			g.drawImage(box2, 225, 137, null, this);
			if (sely == 0)
				g.drawImage(box1, 225, 88, null, this);
			else if (sely == 1)
				g.drawImage(box1, 225, 113, null, this);
			else if (sely == 2)
				g.drawImage(box1, 225, 137, null, this);
			else if (sely == 3)
				g.drawImage(imgs[4], 273, 163, null, this); // music
			else if (sely == 4)
				g.drawImage(imgs[5], 266, 186, null, this); // sounds
			else if (sely == 5)
				g.drawImage(imgs[6], 260, 210, null, this); // level
			g.setFont(new Font("Arial", Font.BOLD, 13));
			g.setColor(new Color(236, 88, 0));
			if (timr1 < 15) {
				if (sely == 0)
					g.drawString(inputstr + "|", 247, 102);
				else if (sely == 1)
					g.drawString(inputstr + "|", 247, 128);
				else if (sely == 2)
					g.drawString(inputstr + "|", 247, 152);
			} else {
				if (sely == 0)
					g.drawString(inputstr, 247, 102);
				else if (sely == 1)
					g.drawString(inputstr, 247, 128);
				else if (sely == 2)
					g.drawString(inputstr, 247, 152);
			}
			g.setFont(barfont);
			g.setColor(new Color(0, 0, 255));
			g.drawString(msgstr, 496, 105);
			if (timr1 == 30)
				timr1 = 0;
			if (music == true) {
				g.drawImage(cursor1, 318, 167, null, this);
				g.drawImage(cursor, 466, 167, null, this);
			} else {
				g.drawImage(cursor, 318, 167, null, this);
				g.drawImage(cursor1, 466, 167, null, this);
			}
			if (sounds == true) {
				g.drawImage(cursor1, 318, 189, null, this);
				g.drawImage(cursor, 466, 188, null, this);
			} else {
				g.drawImage(cursor, 318, 189, null, this);
				g.drawImage(cursor1, 466, 188, null, this);
			}
			if (level == 1) {
				g.drawImage(cursor, 318, 210, null, this);
				g.drawImage(cursor1, 466, 210, null, this);
				g.drawImage(cursor1, 625, 210, null, this);
			} else if (level == 2) {
				g.drawImage(cursor1, 318, 210, null, this);
				g.drawImage(cursor, 466, 210, null, this);
				g.drawImage(cursor1, 625, 210, null, this);
			} else {
				g.drawImage(cursor1, 318, 210, null, this);
				g.drawImage(cursor1, 466, 210, null, this);
				g.drawImage(cursor, 625, 210, null, this);
			}
		}
		if (pop_up == true) {
			screenFade(g);
			g.drawImage(popup, 166, 200, null, this);
		}
	}

	void drawNucb(Graphics g) {
		Graphics2D g2 = (Graphics2D) g;
		g2.setTransform(new AffineTransform());
		g2.setComposite(alpha);
		g2.setColor(new Color(255, 255, 70));
		g2.fillOval(nucbx - nuctimr * 15, nucby - nuctimr * 15, nuctimr * 30, nuctimr * 30);
		g2.setComposite(alphanull);
		for (int i = framex; i < framex + 16; i++)
			for (int j = framey; j < framey + 12; j++) {
				int x1 = 50 * (i - framex) + 25, y1 = 50 * (j - framey) + 25;
				int dist = (int) Math.round(Math.sqrt((x1 - nucbx) * (x1 - nucbx) + (y1 - nucby) * (y1 - nucby)));
				if (dist <= nuctimr * 15 && nuctimr > 0)
					map[i][j] = space;
			}
		nuctimr++;
		if (nuctimr == nucrad) {
			nucb = false;
			magmaFlow();
		}
		redraw();
	}

	void drawSbomb(Graphics g) {
		Graphics2D g2 = (Graphics2D) g;
		g2.setTransform(new AffineTransform());
		g2.setComposite(alpha);
		g2.setColor(new Color(150, 150, 100));
		for (int ang = 0; ang < 360; ang += 20) {
			int xarr[] = new int[4], yarr[] = new int[4];
			xarr[0] = sbombx + (int) Math.round(20 * stimr * Math.cos(ang * Math.PI / 180));
			xarr[1] = sbombx + (int) Math.round(20 * stimr * Math.cos((ang + 20) * Math.PI / 180));
			xarr[2] = sbombx + (int) Math.round(20 * (stimr - 1) * Math.cos((ang + 20) * Math.PI / 180));
			xarr[3] = sbombx + (int) Math.round(20 * (stimr - 1) * Math.cos(ang * Math.PI / 180));
			yarr[0] = sbomby - (int) Math.round(20 * stimr * Math.sin(ang * Math.PI / 180));
			yarr[1] = sbomby - (int) Math.round(20 * stimr * Math.sin((ang + 20) * Math.PI / 180));
			yarr[2] = sbomby - (int) Math.round(20 * (stimr - 1) * Math.sin((ang + 20) * Math.PI / 180));
			yarr[3] = sbomby - (int) Math.round(20 * (stimr - 1) * Math.sin(ang * Math.PI / 180));
			g2.fillPolygon(xarr, yarr, 4);
		}
		g2.setComposite(alphanull);
		for (int i = framex; i < framex + 16; i++)
			for (int j = framey; j < framey + 12; j++) {
				int x1 = 50 * (i - framex) - 15, y1 = 50 * (j - framey) - 15;
				if (map[i][j] == 29 || map[i][j] == 30) {
					int dist = (int) Math.round(Math.sqrt((x1 - digx) * (x1 - digx) + (y1 - digy) * (y1 - digy)));
					if (dist <= stimr * 20 && stimr > 0)
						map[i][j] = 0;
				}
			}
		stimr++;
		redraw();
		if (stimr == -iposy / 200 + 19) {
			stimr = 0;
			sbomb = false;
		}
	}

	void drawRbomb(Graphics g) {
		Graphics2D g2 = (Graphics2D) g;
		g2.setTransform(new AffineTransform());
		g2.setComposite(alpha);
		g2.setColor(new Color(150, 255, 150));
		g2.fillOval(rbombx - rtimr * 12, rbomby - rtimr * 12, rtimr * 24, rtimr * 24);
		g2.setComposite(alphanull);
		rtimr++;
		if (rtimr == 30) {
			rtimr = 0;
			rbomb = false;
			modifyMinerals();
		}
	}

	void drawIbomb(Graphics g) {
		g.setColor(new Color(0, 255, 255));
		for (int ang = 0; ang < 360; ang += 20) {
			int xarr[] = new int[4], yarr[] = new int[4];
			xarr[0] = ibombx + (int) Math.round(15 * itimr * Math.cos(ang * Math.PI / 180));
			xarr[1] = ibombx + (int) Math.round(15 * itimr * Math.cos((ang + 20) * Math.PI / 180));
			xarr[2] = ibombx + (int) Math.round(15 * (itimr - 2) * Math.cos((ang + 20) * Math.PI / 180));
			xarr[3] = ibombx + (int) Math.round(15 * (itimr - 2) * Math.cos(ang * Math.PI / 180));
			yarr[0] = ibomby - (int) Math.round(15 * itimr * Math.sin(ang * Math.PI / 180));
			yarr[1] = ibomby - (int) Math.round(15 * itimr * Math.sin((ang + 20) * Math.PI / 180));
			yarr[2] = ibomby - (int) Math.round(15 * (itimr - 2) * Math.sin((ang + 20) * Math.PI / 180));
			yarr[3] = ibomby - (int) Math.round(15 * (itimr - 2) * Math.sin(ang * Math.PI / 180));
			g.fillPolygon(xarr, yarr, 4);
		}
		boolean bool = false;
		if (map[iposx][iposy] == magma)
			bool = true;
		for (int i = framex; i < (int) framex + 16; i++)
			for (int j = framey; j < (int) framey + 12; j++) {
				int x1 = 50 * (i - framex), y1 = 50 * (j - framey);
				if (map[i][j] == magma || map[i][j] == 31) {
					int dist = (int) Math
							.round(Math.sqrt((x1 - ibombx) * (x1 - ibombx) + (y1 - ibomby) * (y1 - ibomby)));
					if (dist <= itimr * 15 && itimr > 0) {
						if (map[i][j] == magma) { // magma - 0
							map[i][j] = 0;
							mapmode[i][j] = (byte) (Math.random() * 6);
						} else
							map[i][j] = 30; // 31 - 30
					}
				}
			}
		if (bool == true)
			map[iposx][iposy] = magma;
		itimr++;
		redraw();
		if (itimr == 25) {
			itimr = 0;
			ibomb = false;
		}
	}

	void drawTr(Graphics g) {
		trtimr++;
		if (trtimr == 20) {
			tr = false;
			trtimr = 0;
		}
		if (trdir == 0)
			g.drawImage(beamh, digx + 45, digy - 25, null, this); // right
		else if (trdir == 1)
			g.drawImage(beamv, digx + 30, digy - 75, null, this); // up
		else if (trdir == 2)
			g.drawImage(beamh, digx - 25, digy - 25, null, this); // left
		else if (trdir == 3)
			g.drawImage(beamv, digx + 30, digy - 25, null, this); // down
	}

	void makeExpl() {
		expl = getImage("images/expl.png");
		if (sounds == true)
			shipexpl.play();
		expls = true;
		eframes = 32;
		ewidth = 64;
		explx = digx;
		exply = digy - 50;
		etimr = 0;
		if (hull > hullmax) {
			msg = true;
			msgstr = "SHIP DAMAGED!";
			damx = digx;
			damy = digy;
		}
		if (explorer == true)
			hull = 0;
	}

	void drawExpl(Graphics g) {
		g.drawImage(expl, explx, exply, explx + ewidth, exply + ewidth, etimr * ewidth, 0, etimr * ewidth + ewidth,
				ewidth, null, this);
		etimr++;
		if (etimr == eframes) {
			etimr = 0;
			expls = false;
			expl = null;
		}
	}

	void makeGr() {
		if (Math.random() < 0.3) {
			for (int i = 0; i < SHM; i++)
				if (grexists[i] == false) {
					grx[i] = digx + 18;
					gry[i] = digy - 10;
					if (mode == 2) {
						gryspd[i] = 8 * Math.random() - 4;
						if (right_side == true)
							grxspd[i] = 12 * Math.random() - 15;
						else
							grxspd[i] = -12 * Math.random() + 15;
					} else if (mode == 4) {
						gryspd[i] = 6 - 8 * Math.random();
						grxspd[i] = 12 * Math.random() - 6;
					}
					grscale[i] = (int) Math.round(10 * Math.random() + 10);
					grexists[i] = true;
					grtype[i] = 0;
					if (Math.random() < 0.7) {
						if (map[iposx][iposy] == 29)
							grtype[i] = 1;
						else if (map[iposx][iposy] == 30)
							grtype[i] = 2;
					}
					break;
				}
		}
	}

	void drawGr(Graphics g) {
		for (int i = 0; i < SHM; i++)
			if (grexists[i] == true) {
				grx[i] += grxspd[i];
				gry[i] += gryspd[i];
				gryspd[i] += 0.15;
				if (grx[i] < 0 || grx[i] > rw || gry[i] < 0 || gry[i] > rh)
					grexists[i] = false;
				if (grtype[i] == 0)
					g.drawImage(shmootz, grx[i], gry[i], grscale[i], grscale[i], null, this);
				else if (grtype[i] == 1)
					g.drawImage(grans, grx[i], gry[i], grscale[i], grscale[i], null, this);
				else if (grtype[i] == 2)
					g.drawImage(marbs, grx[i], gry[i], grscale[i], grscale[i], null, this);
			}
	}

	public void redraw() {
		if (field == null)
			field = createImage(800, 600);
		Graphics gI = field.getGraphics();
		drawField(gI);
	}

	void drawField2(Graphics gr) {
		gr.drawImage(earthwork, 0, 0, null, this);
		gr.setColor(back_color);
		for (int i = framex; i < framex + 16; i++)
			for (int j = framey; j < framey + 12; j++) {
				int x1 = 50 * (i - framex), y1 = 50 * (j - framey);
				int idx = map[i][j];
				if (idx >= magma && j > 4) {
					gr.fillOval(x1 + 5, y1 + 5, 40, 40);
					if (i > 0 && map[i - 1][j] >= magma) {
						gr.fillRect(x1, y1 + 5, 25, 40);
						if (map[i][j - 1] >= magma) {
							int xarr[] = { x1 + 1, x1 + 5, x1 + 5 };
							int yarr[] = { y1 + 5, y1 + 1, y1 + 5 };
							gr.fillPolygon(xarr, yarr, 3);
						}
						if (map[i][j + 1] >= magma) {
							int xarr[] = { x1 + 1, x1 + 5, x1 + 5 };
							int yarr[] = { y1 + 45, y1 + 49, y1 + 45 };
							gr.fillPolygon(xarr, yarr, 3);
							if (map[i - 1][j + 1] >= magma)
								gr.fillRect(x1 - 6, y1 + 44, 12, 12);
						}
					}
					if (i < 47 && map[i + 1][j] >= magma) {
						gr.fillRect(x1 + 25, y1 + 5, 25, 40);
						if (map[i][j - 1] >= magma) {
							int xarr[] = { x1 + 45, x1 + 45, x1 + 49 };
							int yarr[] = { y1 + 1, y1 + 5, y1 + 5 };
							gr.fillPolygon(xarr, yarr, 3);
						}
						if (map[i][j + 1] >= magma) {
							int xarr[] = { x1 + 45, x1 + 45, x1 + 49 };
							int yarr[] = { y1 + 49, y1 + 45, y1 + 45 };
							gr.fillPolygon(xarr, yarr, 3);
							if (map[i + 1][j + 1] >= magma)
								gr.fillRect(x1 + 44, y1 + 44, 12, 12);
						}
					}
					if (map[i][j - 1] >= magma)
						gr.fillRect(x1 + 5, y1, 40, 25);
					if (map[i][j + 1] >= magma)
						gr.fillRect(x1 + 5, y1 + 25, 40, 25);
				} else if (idx < space && idx > 0 && glow[idx] == false)
					gr.drawImage(imgs[idx], x1, y1, null, this);
			}
		for (int i = framex; i < framex + 16; i++)
			for (int j = framey; j < framey + 12; j++) {
				int x1 = 50 * (i - framex), y1 = 50 * (j - framey);
				int idx = map[i][j];
				if (glow[idx] == true)
					gr.drawImage(imgs[idx], x1 - 25, y1 - 25, null, this);
			}
	}

	private void drawField(Graphics gr) {
		gr.setColor(back_color);
		gr.fillRect(0, 0, rw, rh);
		for (int i = framex; i < framex + 16; i++)
			for (int j = framey; j < framey + 12; j++) {
				int x1 = 50 * (i - framex), y1 = 50 * (j - framey);
				int idx = map[i][j];
				if (idx < magma)
					gr.drawImage(ground[mapmode[i][j] % 6], x1, y1, null, this);
				if (idx < space && idx > 0 && glow[idx] == false) {
					if (idx != magma)
						gr.drawImage(imgs[idx], x1, y1, null, this);
					else if (idx == magma)
						gr.drawImage(imgs[magma], x1, y1, null, this);
				}
				if (idx >= magma && j > 4) {
					if (i == 0) {
						gr.drawImage(grv, x1, y1, null, this);
						if (map[i][j - 1] < magma)
							gr.drawImage(grul2, x1 + 7, y1 + 6, null, this);
						if (map[i][j + 1] < magma)
							gr.drawImage(grdl2, x1 + 7, y1 + 31, null, this);
					} else if (i == 47) {
						gr.drawImage(grv, x1 + 43, y1, null, this);
						if (map[i][j - 1] < magma)
							gr.drawImage(grur2, x1 + 30, y1 + 6, null, this);
						if (map[i][j + 1] < magma)
							gr.drawImage(grdr2, x1 + 30, y1 + 31, null, this);
					}
					if (i > 0 && map[i - 1][j] < magma) {
						gr.drawImage(grv, x1, y1, null, this);
						if (map[i][j - 1] < magma)
							gr.drawImage(grul2, x1 + 7, y1 + 6, null, this);
					}
					if (i > 0 && map[i - 1][j - 1] < magma)
						gr.drawImage(grul1, x1, y1 - 1, null, this);
					if (map[i][j - 1] < magma) {
						gr.drawImage(grh, x1, y1, null, this);
						if (i < 47 && map[i + 1][j] < magma)
							gr.drawImage(grur2, x1 + 30, y1 + 6, null, this);
					}
					if (i < 47 && map[i + 1][j] < magma) {
						gr.drawImage(grv, x1 + 43, y1, null, this);
						if (map[i][j + 1] < magma)
							gr.drawImage(grdr2, x1 + 30, y1 + 31, null, this);
					}
					if (i < 47 && map[i + 1][j - 1] < magma)
						gr.drawImage(grur1, x1 + 43, y1 - 1, null, this);
					if (i < 47 && map[i + 1][j + 1] < magma)
						gr.drawImage(grdr1, x1 + 43, y1 + 44, null, this);
					if (map[i][j + 1] < magma) {
						gr.drawImage(grh, x1, y1 + 44, null, this);
						if (i > 0 && map[i - 1][j] < magma)
							gr.drawImage(grdl2, x1 + 7, y1 + 31, null, this);
					}
					if (i > 0 && map[i - 1][j + 1] < magma)
						gr.drawImage(grdl1, x1, y1 + 44, null, this);
				}
				// gr.drawString(""+mapmode[i][j],x1+20,y1+20);
			}
		for (int i = framex; i < framex + 16; i++)
			for (int j = framey; j < framey + 12; j++) {
				int x1 = 50 * (i - framex), y1 = 50 * (j - framey);
				int idx = map[i][j];
				if (glow[idx] == true)
					gr.drawImage(imgs[idx], x1 - 25, y1 - 25, null, this);
			}
	}

	void backColor() {
		if (iposy < 500)
			back_color = new Color((int) Math.round(-0.21 * iposy + 145), (int) Math.round(-0.174 * iposy + 120),
					(int) Math.round(-0.128 * iposy + 87));
		else if (iposy < 1200)
			back_color = new Color((int) Math.round(0.229 * iposy - 74), (int) Math.round(-0.007 * iposy + 36.57), 23);
		else
			back_color = new Color(200, 28, 23);
	}

	void drawDigger(Graphics g) {
		if (hull <= hullmax) {
			int hx = 0, hy = 0;
			if (mode == 1) { // drive
				if (right_side == false) {
					g.drawImage(dig_l0, digx, digy - 30, null, this);
					hx = 15;
				} else {
					g.drawImage(dig_r0, digx + 49, digy - 30, null, this);
					hx = 2;
				}
				g.drawImage(tracks, digx + 12, digy - 11, null, this);
				if (drill <= 0) {
					if (right_side == false) {
						g.drawImage(nodrill_l, digx, digy - 33, null, this);
						hx = 15;
					} else {
						g.drawImage(nodrill_r, digx + 12, digy - 33, null, this);
						hx = 2;
					}
				}
			} else if (mode == 4) { // dig down
				if (right_side == false) {
					hx = 9;
					hy = 1;
					if (digtimr % 3 == 0)
						g.drawImage(dig_dl0, digx + 12, digy - 33, null, this);
					else if (digtimr % 3 == 1)
						g.drawImage(dig_dl1, digx + 12, digy - 33, null, this);
					else if (digtimr % 3 == 2)
						g.drawImage(dig_dl2, digx + 12, digy - 33, null, this);
				} else {
					hx = -1;
					hy = 1;
					if (digtimr % 3 == 0)
						g.drawImage(dig_dr0, digx + 12, digy - 33, null, this);
					else if (digtimr % 3 == 1)
						g.drawImage(dig_dr1, digx + 12, digy - 33, null, this);
					else if (digtimr % 3 == 2)
						g.drawImage(dig_dr2, digx + 12, digy - 33, null, this);
				}
			} else if (mode == 2) { // dig horizontal
				if (right_side == false) {
					hx = 15; // LEFT
					if (digtimr % 3 == 0)
						g.drawImage(dig_l0, digx, digy - 30, null, this);
					else if (digtimr % 3 == 1)
						g.drawImage(dig_l1, digx, digy - 30, null, this);
					else if (digtimr % 3 == 2)
						g.drawImage(dig_l2, digx, digy - 30, null, this);
				} else {
					hx = 3; // RIGHT
					if (digtimr % 3 == 0)
						g.drawImage(dig_r0, digx + 49, digy - 30, null, this);
					else if (digtimr % 3 == 1)
						g.drawImage(dig_r1, digx + 49, digy - 30, null, this);
					else if (digtimr % 3 == 2)
						g.drawImage(dig_r2, digx + 49, digy - 30, null, this);
				}
				g.drawImage(tracks, digx + 12, digy - 11, null, this);
			} else if (mode == 3 || mode == 5) { // fly/fall
				if (flame == false || mode == 5) {
					vert(g);
					if (right_side == true) {
						hy = 6;
					} else {
						hy = 5;
						hx = 11;
					}
				} else { // flame
					if (right_side == true) {
						g.drawImage(flame_r, digx + 10, digy - 44, null, this);
						hx = -3;
						hy = -11;
					} else {
						g.drawImage(flame_l, digx + 10, digy - 44, null, this);
						hx = 8;
						hy = -11;
					}
				}
			}
			if (right_side == true)
				g.drawImage(hull_r, digx + 12 + hx + hlx, digy - 33 + hy + hly, null, this);
			else
				g.drawImage(hull_l, digx + hx + hlx, digy - 33 + hy + hly, null, this);
			if (rx > biomax)
				g.drawImage(radiation, digx - 15, digy - 70, null, this);
		} else { // damaged ship
			g.drawImage(destroyed, damx + 10, damy - 33, null, this);
			digx = damx;
			digy = damy;
		}
	}

	void drawExplorer(Graphics g) {
		if (timr2 > 0) {
			timr2++;
			if (timr2 < 6) {
				Graphics2D g2 = (Graphics2D) g;
				g2.setTransform(new AffineTransform());
				g2.setComposite(alpha);
				g2.setColor(new Color(150, 150, 100));
				if (dir2 == 1)
					g2.fillRect(digx + 30 + timr2 * 10, digy - 60, 15, 60);
				else if (dir2 == 2)
					g2.fillRect(digx - timr2 * 10 + 10, digy - 60, 15, 60);
				else if (dir2 == 3)
					g2.fillRect(digx, digy - 15 + timr2 * 10, 60, 15);
				g2.setComposite(alphanull);
			}
			if (dir2 == 1)
				g.drawImage(beamh, digx + 45, digy - 25, null, this); // right
			else if (dir2 == 2)
				g.drawImage(beamh, digx - 25, digy - 25, null, this); // left
			else if (dir2 == 3)
				g.drawImage(beamv, digx + 30, digy - 25, null, this); // down
			if (timr2 == 20)
				timr2 = 0;
		}
		if (mode == 1) { // drive
			if (right_side == false)
				g.drawImage(dig_l0, digx, digy - 33, null, this);
			else
				g.drawImage(dig_r0, digx + 12, digy - 33, null, this);
		} else if (mode == 3) {
			if (map[iposx][iposy] != magma) { // fly
				if (right_side == true)
					g.drawImage(flame_r, digx + 10, digy - 44, null, this);
				else
					g.drawImage(flame_l, digx + 10, digy - 44, null, this);
			} else
				vert(g);
		} else if (mode == 5) { // fall
			if (map[iposx][iposy] != magma) {
				if (right_side == true)
					g.drawImage(dig_r0, digx + 10, digy - 44, null, this);
				else
					g.drawImage(dig_l0, digx, digy - 44, null, this);
			} else
				vert(g);
		}
	}

	void vert(Graphics g) {
		if (right_side == false) { // swim
			if (timr1 % 3 == 0)
				g.drawImage(fly_l0, digx + 10, digy - 44, null, this);
			else if (timr1 % 3 == 1)
				g.drawImage(fly_l1, digx + 10, digy - 44, null, this);
			else if (timr1 % 3 == 2)
				g.drawImage(fly_l2, digx + 10, digy - 44, null, this);
			else if (timr1 % 3 == 3)
				g.drawImage(fly_l3, digx + 10, digy - 44, null, this);
		} else {
			if (timr1 % 3 == 0)
				g.drawImage(fly_r0, digx + 10, digy - 44, null, this);
			else if (timr1 % 3 == 1)
				g.drawImage(fly_r1, digx + 10, digy - 44, null, this);
			else if (timr1 % 3 == 2)
				g.drawImage(fly_r2, digx + 10, digy - 44, null, this);
			else if (timr1 % 3 == 3)
				g.drawImage(fly_r3, digx + 10, digy - 44, null, this);
		}
	}

	void collision() {
		if (expls == false) {
			makeExpl();
			explx = digx - 10;
			exply = digy - 20;
		}
		msg = true;
		msgstr = "SHIP DAMAGED!";
	}

	void modifyMinerals() { // radiation bomb
		for (int i = framex; i < (int) framex + 16; i++)
			for (int j = framey; j < (int) framey + 12; j++) {
				int x1 = 50 * (i - framex), y1 = 50 * (j - framey);
				int dist = (int) Math.round(Math.sqrt((x1 - rbombx) * (x1 - rbombx) + (y1 - rbomby) * (y1 - rbomby)));
				if (dist <= 360) {
					if (map[i][j] == 1) {
						if (Math.random() < 0.05)
							map[i][j] = 18;
					} // coal - diamond
					else if (map[i][j] == 0) {
						if (Math.random() < 0.5)
							map[i][j] = 3;
					} // earth - iron
					else if (map[i][j] == 4) {
						if (Math.random() < 0.15)
							map[i][j] = 15;
					} // copper - emerald
					else if (map[i][j] == 5) {
						if (Math.random() < 0.25)
							map[i][j] = 14;
					} // quartz - topaz
					else if (map[i][j] == 6) {
						if (Math.random() < 0.5)
							map[i][j] = 10;
					} // lead - palladium
					else if (map[i][j] == 8) {
						if (Math.random() < 0.1)
							map[i][j] = 47;
					} // silver - mithril
					else if (map[i][j] == 10) {
						if (Math.random() < 0.2)
							map[i][j] = 20;
					} // palladium - thorium
					else if (map[i][j] == 11) {
						if (Math.random() < 0.15)
							map[i][j] = 21;
					} // cesium - uranium
					else if (map[i][j] == 14) {
						if (Math.random() < 0.5)
							map[i][j] = 18;
					} // topaz - diamond
					else if (map[i][j] == 15) {
						if (Math.random() < 0.12)
							map[i][j] = 26;
					} // emerald - kryptonite
					else if (map[i][j] == 17) {
						if (Math.random() < 0.15)
							map[i][j] = 25;
					} // ruby - sunstone
					else if (map[i][j] == 18) {
						if (Math.random() < 0.3)
							map[i][j] = 24;
					} // diamond - starstone
					else if (map[i][j] == 19) {
						if (Math.random() < 0.3)
							map[i][j] = 32;
					} // amazonite - adamite
					else if (map[i][j] == 22) {
						if (Math.random() < 0.22)
							map[i][j] = 27;
					} // plutonium - dark matter
					else if (map[i][j] == 17) {
						if (Math.random() < 0.12)
							map[i][j] = 40;
					} // ruby - fedgarnet
					else if (map[i][j] == 16) {
						if (Math.random() < 0.15)
							map[i][j] = 36;
					} // saphire - aquamarine
					else if (map[i][j] == 29) {
						if (Math.random() < 0.4)
							map[i][j] = 5;
					} // granite - quartz
					else if (map[i][j] == 30) {
						if (Math.random() < 0.3)
							map[i][j] = 14;
					} // marble -topaz
					else if (map[i][j] == 31) {
						if (Math.random() < 0.5)
							map[i][j] = 29;
					} // lava - granite
					else if (map[i][j] == magma) {
						if (Math.random() < 0.6)
							map[i][j] = 0;
					} // magma - earth
					else if (map[i][j] == 41) {
						if (Math.random() < 0.1)
							map[i][j] = 48; // tanzanite - adamantium
						else if (Math.random() < 0.1)
							map[i][j] = 49; // tanzanite - unobtainium
					}
				}
			}
		redraw();
	}

	void drawBar2(Graphics g) {
		int dy = 7;
		g.drawImage(bar1, 0, 483 + dy, null, this);
		g.setColor(Color.red);
		g.fillRect(429, 565 + dy - 47 * cargo / cargomax, 50, 47 * cargo / cargomax); // cargo
		g.fillRect(343, 566 + dy - (int) (49 * fuel / fuelmax), 43, (int) (49 * fuel / fuelmax)); // fuel
		g.fillRect(268, 565 + dy - (int) (47 * battery / batmax), 65, (int) (47 * battery / batmax)); // battery
		if (temp < 1200)
			g.fillRect(399, 563 + dy - 48 * temp / tempmax, 19, 48 * temp / tempmax); // temperature
		else
			g.fillRect(399, 563 + dy - 48, 19, 48);
		if (nux < 45000)
			g.fillRect(492, 566 + dy - 48 * nux / 45000, 63, 48 * nux / 45000); // expls
		else
			g.fillRect(492, 566 + dy - 48, 63, 48);
		g.setColor(Color.blue);
		g.fillRect(567, 565 + dy - (int) (47 * ice9 / ice9max), 50, (int) (47 * ice9 / ice9max)); // ice9
		g.drawImage(bar2, 0, 483 + dy, null, this);
		g.setColor(Color.black);
		g.setFont(bardraw);
		g.drawString("" + cargo, 435, 590 + dy);
		g.drawString("" + Math.round(fuel), 348, 590 + dy);
		g.drawString("" + Math.round(battery), 278, 590 + dy);
		g.drawString("" + temp, 393, 590 + dy);
		g.drawString("" + Math.round(ice9 * 100) / 100, 580, 590 + dy);
		g.drawString("" + nux, 502, 590 + dy);
		g.setColor(c_bar);
		g.drawString(moneystr, 40, 553 + dy);
		g.drawString("" + depth, 74, 582 + dy);
		// time
		int minutes = (time / 1000) % 60, hours = (time / 60000) % 24, days = time / 1440000;
		String mint = "", hrs = "";
		if (minutes < 10)
			mint += "0" + minutes;
		else
			mint += "" + minutes;
		if (hours < 10)
			hrs += "0" + hours;
		else
			hrs += "" + hours;
		g.drawString("" + days, 695, 590); // days
		g.drawString(hrs, 726, 590); // hours
		g.drawString(mint, 757, 590); // minutes
		if (depth > detd - 200 && depth < detd + 200) { // detonate
			g.drawImage(bomblamp, 170, 500, null, this);
			g.setColor(Color.red);
			g.drawString("LAUNCH!", 192, 590 + dy);
			g.drawString("LAUNCH!", 380, 30);
		}
		g.setFont(barfont);
		g.setColor(Color.black);
		g.drawString(scorestr, 10, 20);
	}

	void drawBar1(Graphics g) {
		int dy = 7;
		if (is_mission == true && mission.complete == false) {
			int xarr[] = { 543, 568, 594, 619, 645, 671, 696, 722, 747, 772 };
			int yarr[] = { 473, 473, 473, 474, 474, 479, 481, 484, 489, 492 };
			g.drawImage(mission_img, 512, 450, null, this);
			for (int i = 0; i < mission.number; i++)
				if (mission.quantity[i] > 0)
					g.drawImage(imgs[mission.minarray[i]], xarr[i], yarr[i], 25, 25, null, this);
		}
		g.drawImage(bar1, 0, 483 + dy, null, this);
		g.setColor(Color.red);
		if (hull < hullmax)
			g.fillRect(587, 567 + dy - 49 * hull / hullmax, 52, 49 * hull / hullmax); // hull
		else
			g.fillRect(587, 567 + dy - 49, 52, 49);
		g.fillRect(289, 567 + dy - (int) (49 * drill / drillmax), 52, (int) (49 * drill / drillmax)); // drill
		if (rx < biomax)
			g.fillRect(443, 567 + dy - 49 * rx / biomax, 61, 49 * rx / biomax); // radiation
		else
			g.fillRect(443, 567 + dy - 49, 61, 49);
		g.fillRect(381, 567 + dy - 49 * cargo / cargomax, 52, 49 * cargo / cargomax); // cargo
		g.fillRect(514, 567 + dy - 49 * rpm / engmax, 63, 49 * rpm / engmax); // engine
		g.fillRect(236, 567 + dy - (int) (49 * fuel / fuelmax), 47, (int) (49 * fuel / fuelmax)); // fuel
		g.fillRect(161, 567 + dy - (int) (49 * battery / batmax), 67, (int) (49 * battery / batmax)); // battery
		if (temp < 1200)
			g.fillRect(351, 563 + dy - 52 * temp / tempmax, 20, 52 * temp / tempmax); // temperature
		else
			g.fillRect(351, 563 + dy - 52, 20, 52);
		g.drawImage(bar2, 0, 483 + dy, null, this);
		g.setColor(Color.black);
		g.setFont(bardraw);
		g.drawString("" + 100 * rpm / engmax + "%", 524, 590 + dy);
		g.drawString("" + cargo, 388, 590 + dy);
		g.drawString("" + Math.round(drill), 294, 590 + dy);
		g.drawString("" + hull, 589, 590 + dy);
		g.drawString("" + Math.round(fuel), 239, 590 + dy);
		g.drawString("" + Math.round(battery), 168, 590 + dy);
		g.drawString("" + temp, 346, 590 + dy);
		g.drawString("" + 100 * rx / biomax + "%", 452, 590 + dy);
		g.setColor(c_bar);
		g.drawString(moneystr, 41, 552 + dy);
		g.drawString("" + depth, 73, 582 + dy);
		// time
		int minutes = (time / 1000) % 60, hours = (time / 60000) % 24, days = time / 1440000;
		String mint = "", hrs = "";
		if (minutes < 10)
			mint += "0" + minutes;
		else
			mint += "" + minutes;
		if (hours < 10)
			hrs += "0" + hours;
		else
			hrs += "" + hours;
		g.drawString("" + days, 695, 583 + dy); // days
		g.drawString(hrs, 727, 583 + dy); // hours
		g.drawString(mint, 756, 583 + dy); // minutes
		g.setFont(barfont);
		g.setColor(Color.black);
		g.drawString(scorestr, 10, 20);
		if (ice9 > 0) {
			g.setColor(c_black);
			g.drawRect(759, 399, 22, 102);
			g.setColor(c_blue);
			int ht = (int) Math.round(ice9 * 100 / ice9max);
			g.fillRect(760, 501 - ht, 21, ht);
			g.drawString("Ice9", 750, 390);
			g.drawString("" + Math.round(ice9 * 100) / 100, 750, 520);
		}
		g.drawImage(cursor, 655, 529, null, this); // processor light
	}

	// void drawStatus(Graphics g){screenFade(g);}
	void drawLabel(Graphics g) {
		if (labl1 == true) {
			g.setColor(c_red);
			g.setFont(labelfont);
			labl1timr++;
			labl1y -= 3;
			g.drawString(labl1str1, labl1x, labl1y - 20);
			g.drawString(labl1str2, labl1x, labl1y - 8);
			if (labl1timr == 50)
				labl1 = false;
		}
		if (labl2 == true) { // bonus
			labl2timr++;
			if (labl2timr % 4 < 2)
				g.setColor(c_red);
			else
				g.setColor(Color.green);
			g.setFont(font20);
			g.drawString(labl2str1, rw / 2 - 150, rh / 2 - 50);
			g.drawString(labl2str2, rw / 2 - 150, rh / 2 - 25);
			if (labl2timr == 150)
				labl2 = false;
		}
	}

	void drawShmootz(Graphics g) {
		g.setColor(new Color(61, 53, 31));
		for (int i = 0; i < RCK; i++)
			if (rockexists[i] == true) {
				rockx[i] += rockxspd[i];
				rocky[i] += rockyspd[i];
				int xarr[] = { rockx[i] - rockscale[i], rockx[i], rockx[i] + rockscale[i] };
				int yarr[] = { rocky[i] + rockscale[i], rocky[i] - rockscale[i], rockx[i] + rockscale[i] };
				g.fillPolygon(xarr, yarr, 3);
				if (rockx[i] < 0 || rockx[i] > rw || rocky[i] < 0 || rockx[i] > rh)
					rockexists[i] = false;
			}
	}

	void screenFade(Graphics g) {
		Graphics2D g2 = (Graphics2D) g;
		g2.setTransform(new AffineTransform());
		g2.setComposite(alpha);
		g2.setColor(new Color(70, 70, 70));
		g2.fillRect(0, 0, rw, rh);
		g2.setComposite(alphanull);
	}

	private void boom(int dir) {
		for (int i = 0; i < 10; i++)
			if (grexists[i] == false) {
				grexists[i] = true;
				grxspd[i] = 16 * Math.random() - 8;
				gryspd[i] = 16 * Math.random() - 8;
				grscale[i] = (int) Math.round(10 * Math.random() + 10);
				grtype[i] = 0;
				if (dir == 1) {
					grx[i] = digx + 50;
					gry[i] = digy;
				} else if (dir == 2) {
					grx[i] = digx - 50;
					gry[i] = digy;
				} else if (dir == 3) {
					grx[i] = digx;
					gry[i] = digy + 50;
				}
				if (Math.random() < 0.6) {
					if (dir == 1 && map[iposx + 1][iposy] == 30)
						grtype[i] = 2;
					else if (dir == 2 && map[iposx - 1][iposy] == 30)
						grtype[i] = 2;
					else if (dir == 3 && map[iposx][iposy + 1] == 30)
						grtype[i] = 2;
					else if (dir == 1 && map[iposx + 1][iposy] == 29)
						grtype[i] = 1;
					else if (dir == 2 && map[iposx - 1][iposy] == 29)
						grtype[i] = 1;
					else if (dir == 3 && map[iposx][iposy + 1] == 29)
						grtype[i] = 1;
				}
			}
		if (dir == 1) {
			mineral(iposx + 1, iposy);
			map[iposx + 1][iposy] = space;
		} else if (dir == 2) {
			mineral(iposx - 1, iposy);
			map[iposx - 1][iposy] = space;
		} else if (dir == 3) {
			mineral(iposx, iposy + 1);
			map[iposx][iposy + 1] = space;
		}
		if (battery >= 30)
			battery -= 30;
		else {
			fuel -= (30 - battery);
			battery = 0;
		}
		drill = 1000;
		magmaFlow();
		redraw();
		if (sounds == true)
			s_boom.play();
	}

	String getJarPath() {
		if (true)
			return "";
		String path = System.getProperty("java.class.path");
		for (int i = path.length() - 1; i >= 0; i--)
			if (path.charAt(i) == '\\') {
				return path.substring(0, i + 1);
			}
		return "";
	}

	public void genMap() { // generate new map
		int dept = 2000, n1 = 1600;
		if (level == 1) {
			n1 = 1500;
			money_factor = 15;
			score_factor = 5;
		} else if (level == 2) {
			n1 = 1550;
			money_factor = 12;
			score_factor = 7;
		} else if (level == 3) {
			n1 = 1600;
			money_factor = 10;
			score_factor = 10;
		}
		bonus = 1000 * score_factor / 10;
		for (int j = 0; j < dept; j++)
			for (int i = 0; i < 48; i++) {
				double m = rand(n1);
				/* coal */ if (m > 0 && m < 20 && rand(j) < 50 && j < 500)
					map[i][j] = 1;
				/* petrol */ else if (m > 20 && m < 40 && rand(j) < 60 && j < 500)
					map[i][j] = 2;
				/* iron */ else if (m > 40 && m < 59 && rand(j) < 70 && j < 500)
					map[i][j] = 3;
				/* copper */ else if (m > 60 && m < 78 && rand(j) < 80 && j < 500)
					map[i][j] = 4;
				/* quartz */ else if (m > 80 && m < 98 && rand(j) < 100 && j < 500)
					map[i][j] = 5;
				/* lead */ else if (m > 100 && m < 118 && rand(j) < 100 && j < 500)
					map[i][j] = 6;
				/* bronze */ else if (m > 120 && m < 137 && rand(j) < 150 && rand(j) > 20 && j < 700)
					map[i][j] = 7;
				/* silver */ else if (m > 140 && m < 157 && rand(j) < 180 && rand(j) > 70 && j < 700)
					map[i][j] = 8;
				/* gold */ else if (m > 160 && m < 177 && rand(j) < 250 && rand(j) > 100 && j < 700)
					map[i][j] = 9;
				/* palladium */ else if (m > 180 && m < 196 && rand(j) < 300 && rand(j) > 240 && j < 700)
					map[i][j] = 10;
				/* cesium */ else if (m > 200 && m < 216 && rand(j) < 350 && rand(j) > 200 && j < 700)
					map[i][j] = 11;
				/* platiunum */ else if (m > 220 && m < 236 && rand(j) < 280 && rand(j) > 340 && j < 700)
					map[i][j] = 12;
				/* opal */ else if (m > 240 && m < 258 && rand(j) < 750 && rand(j) > 400 && j < 1000)
					map[i][j] = 13;
				/* topaz */ else if (m > 260 && m < 278 && rand(j) < 800 && rand(j) > 440 && j < 1000)
					map[i][j] = 14;
				/* emerald */ else if (m > 280 && m < 297 && rand(j) < 820 && rand(j) > 460 && j < 1000)
					map[i][j] = 15;
				/* saphire */ else if (m > 300 && m < 317 && rand(j) < 840 && rand(j) > 480 && j < 1000)
					map[i][j] = 16;
				/* ruby */ else if (m > 320 && m < 337 && rand(j) < 860 && rand(j) > 500 && j < 1000)
					map[i][j] = 17;
				/* diamond */ else if (m > 340 && m < 357 && rand(j) < 880 && rand(j) > 600 && j < 1200)
					map[i][j] = 18;
				/* amazonite */ else if (m > 360 && m < 376 && rand(j) < 800 && rand(j) > 700 && j < 1200)
					map[i][j] = 19;
				/* thorium */ else if (m > 380 && m < 390 && rand(j) < 1000 && rand(j) > 600 && j < 1300)
					map[i][j] = 20;
				/* uranium */ else if (m > 400 && m < 410 && rand(j) < 1000 && rand(j) > 640 && j < 1300)
					map[i][j] = 21;
				/* plutonium */ else if (m > 420 && m < 428 && rand(j) < 1000 && rand(j) > 680 && j < 1300)
					map[i][j] = 22;
				/* moonstone */ else if (m > 440 && m < 453 && rand(j) > 750 && rand(j) < 1500 && j < 1000)
					map[i][j] = 23;
				/* starstone */ else if (m > 460 && m < 473 && rand(j) > 800 && rand(j) < 1500 && j < 1000)
					map[i][j] = 24;
				/* sunstone */ else if (m > 480 && m < 493 && rand(j) > 850 && rand(j) < 1500 && j < 1000)
					map[i][j] = 25;
				/* kryptonite */ else if (m > 500 && m < 512 && rand(j) > 900 && rand(j) < 1500 && j < 1000)
					map[i][j] = 26;
				/* dark matter */ else if (m > 520 && m < 528 && rand(j) > 950 && rand(j) < 1500 && j < 1000)
					map[i][j] = 27;
				/* gas */ else if (m > 550 && m < 700 && rand(j) > 600 && j < 1400)
					map[i][j] = 28;
				/* space */ if (m > 760 && m < 900)
					map[i][j] = space; // 80
				if (j > 1200) {
					/* adamite */ if (m > 1000 && m < 1010 && rand(j) < 1600)
						map[i][j] = 32;
					/* selenite */ else if (m > 1020 && m < 1030 && rand(j) < 1700)
						map[i][j] = 33;
					/* gyrite */ else if (m > 1040 && m < 1050 && rand(j) < 1800)
						map[i][j] = 34;
					/* froyite */ else if (m > 1060 && m < 1070 && rand(j) > 1300)
						map[i][j] = 35;
					/* aquamarine */ else if (m > 1080 && m < 1090 && rand(j) > 1350)
						map[i][j] = 36;
					/* mimetite */ else if (m > 1100 && m < 1110 && rand(j) > 1400)
						map[i][j] = 37;
					/* orpiment */ else if (m > 1120 && m < 1128 && rand(j) > 1500)
						map[i][j] = 38;
					/* caledonite */ else if (m > 1140 && m < 1148 && rand(j) > 1600)
						map[i][j] = 39;
					/* fedgarnet */ else if (m > 1160 && m < 1168 && rand(j) > 1700)
						map[i][j] = 40;
					/* tanzanite */ else if (m > 1190 && m < 1296 && rand(j) > 1800)
						map[i][j] = 41;
				}
				if (map[i][j] == 0 && j < 1201) {
					/* granite 29 */ if (rand(-0.0333 * j + 53) < 1 && j > 100)
						map[i][j] = 29;
					/* marble 30 */ if (rand(-0.035 * j + 46) < 1 && j > 400)
						map[i][j] = 30;
					/* lava 31 */ if (rand(-0.03 * j + 42.5) < 1 && j > 600)
						map[i][j] = 31;
				}
				if (j > 1200) {
					/* marble 30 */ if (map[i][j] == 0 && rand(4) < 1 && j > 400)
						map[i][j] = 30;
					/* lava 31 */ if (map[i][j] == 0 && rand(6) < 1 && j > 600)
						map[i][j] = 31;
					/* magma */ if (map[i][j] == space && rand(-0.0025 * j + 6) < 1)
						map[i][j] = magma;
				}
				if (j < 5)
					map[i][j] = space;
			}
		loadCheat();
		for (int i = 0; i < 48; i = i + 1)
			map[i][5] = 0;
		int ux1 = (int) Math.floor(47 * Math.random());
		int uy1 = (int) Math.round(400 * Math.random() + 800);
		int ux2 = (int) Math.floor(47 * Math.random());
		int uy2 = (int) Math.round(400 * Math.random() + 800);
		while (uy1 == uy2)
			uy2 = (int) Math.round(400 * Math.random() + 800);
		int ux3 = (int) Math.floor(47 * Math.random());
		int uy3 = (int) Math.round(400 * Math.random() + 800);
		while (uy1 == uy3 || uy2 == uy3)
			uy3 = (int) Math.round(400 * Math.random() + 800);
		int ux4 = (int) Math.floor(47 * Math.random());
		int uy4 = (int) Math.round(400 * Math.random() + 800);
		while (uy1 == uy4 || uy2 == uy4 || uy3 == uy4)
			uy4 = (int) Math.round(400 * Math.random() + 800);
		int ux5 = (int) Math.floor(47 * Math.random());
		int uy5 = (int) Math.round(400 * Math.random() + 800);
		while (uy1 == uy5 || uy2 == uy5 || uy3 == uy5 || uy4 == uy5)
			uy5 = (int) Math.round(400 * Math.random() + 800);
		map[ux1][uy1] = 42;
		map[ux2][uy2] = 43;
		map[ux3][uy3] = 44;
		map[ux4][uy4] = 45;
		map[ux5][uy5] = 46;
		// abandoned ships
		int num = (int) (Math.random() * 20 + 10);
		for (int i = 0; i < num; i++)
			map[(int) (Math.random() * 48)][(int) (Math.random() * 2200 + 800)] = 55;
		// datalog
		int x1 = (int) (Math.random() * 48), y1 = (int) (Math.random() * 200 + 1000);
		map[x1][y1] = 54;
		mapmode[x1][y1] = 0;
		x1 = (int) (Math.random() * 48);
		y1 = (int) (Math.random() * 50 + 950);
		map[x1][y1] = 54;
		mapmode[x1][y1] = 1;
		x1 = (int) (Math.random() * 48);
		y1 = (int) (Math.random() * 300 + 1200);
		map[x1][y1] = 54;
		mapmode[x1][y1] = 2;
		x1 = (int) (Math.random() * 48);
		y1 = (int) (Math.random() * 100 + 750);
		map[x1][y1] = 54;
		mapmode[x1][y1] = 3;
		x1 = (int) (Math.random() * 48);
		y1 = (int) (Math.random() * 1000 + 1000);
		map[x1][y1] = 54;
		mapmode[x1][y1] = 4;
		x1 = (int) (Math.random() * 48);
		y1 = (int) (Math.random() * 400 + 800);
		map[x1][y1] = 54;
		mapmode[x1][y1] = 5;
		/*
		 * map[24][7]=55;//mapmode[24][7]=0; map[25][7]=54;mapmode[25][7]=1;
		 * map[24][8]=54;mapmode[24][8]=2; map[25][8]=54;mapmode[25][8]=3;
		 * map[24][9]=54;mapmode[24][9]=4; map[25][9]=54;mapmode[25][9]=5;
		 */
		n1 = 13;
		if (level == 1)
			n1 = 14;
		for (int j = 2000; j < 3000; j++)
			for (int i = 0; i < 48; i++) {
				double m = rand(1000);
				map[i][j] = 0;
				if (m > 0 && m < 5 && j > 2100)
					map[i][j] = 47; // mithril P
				else if (m > 10 && m < n1 && j > 2200)
					map[i][j] = 48; // unobtainium Q
				else if (m > 20 && m < 25 && j > 2300)
					map[i][j] = 49; // adamantium R
				else if (m > 30 && m < 36)
					map[i][j] = 41; // tanzanite
				else if (m > 40 && m < 55)
					map[i][j] = 50; // ice9
				else if (m > 60 && m < 65 && j > 2100)
					map[i][j] = 51; // bomb1
				else if (m > 70 && m < 75 && j > 2200)
					map[i][j] = 52; // bomb2
				else if (m > 80 && m < 85 && j > 2300)
					map[i][j] = 53; // bomb3
				else if (m > 100 && m < j / 5 - 100)
					map[i][j] = 30; // marble
				else if (m > 500 && m < j / 5 + 200)
					map[i][j] = 31; // lava
				else if (m > 800 && m < 15 * j / 100 + 550)
					map[i][j] = magma; // magma 79
			}
		menu = false;
		startpage = false;
		loadImages();
		loadGameTiles();
		loadHull();
		loadDrill();
		// ---------- deep placement
		// posy=4;posx=23;
		// posy=2994;posx=46;
		/*
		 * mode=1;iposx=(int)Math.round(posx);iposy=(int)Math.round(posy);
		 * framex=(iposx/3)*3-3;if(framex<0)framex=0;if(framex>32)framex=32;
		 * framey=(iposy/3)*3-6; if(framey<0)framey=0;
		 * digx=(iposx-framex)*50-10;digy=(iposy-framey)*50+50; map[iposx][iposy]=space;
		 * tempmax=2000;hullmax=2000;fuelmax=6000;fuel=fuelmax;drillmax=10000;drill=
		 * drillmax;ice9max=2000;
		 * engmax=3000;iceb=30;sonb=30;tel2=20;hullfix=20;drillfix=20;dyn=50;tnt=30;ice9
		 * =2000;tel1=20; shield=20;radb=20;money=200000000;transy=10000;
		 */
		// ice9max=2000;mith=200;adam=200;unob=200;explorer=true;loadImages2();nux=45000;batmax=10000;battery=batmax;
		// ---------- end deep placement
		if (music == true) {
			theme.stop();
			theme = new Sound("images/Sounds/game_theme.mid");
			theme.loop();
		}
		if (sounds == true) {
			s_wind.loop();
			is_wind = true;
		}
		for (int i = 0; i < 48; i++)
			for (int j = 0; j < 3000; j++)
				mapmode[i][j] = (byte) (Math.random() * 6);
		setWeight();
		redraw();
	}

	void gameSave() {
		try {
			int cnt = 0, num;
			PrintStream file = new PrintStream(new FileOutputStream(getJarPath() + inputstr + ".ml"));
			file.println("st. valentines");
			file.println(level);
			cnt += 33 * level;
			for (int j = 0; j < 3000; j++) {
				for (int i = 0; i < 48; i++) {
					num = map[i][j] + 33;
					cnt += (num - 33);
					file.print((char) num);
				}
				file.println();
			}
			String str = Encryptor.encrypt(money, 5) + Encryptor.encrypt((int) Math.round(fuel), 2)
					+ Encryptor.encrypt((int) Math.round(battery), 3) + Encryptor.encrypt((int) Math.round(drill), 3)
					+ Encryptor.encrypt(hull, 2) + Encryptor.encrypt(engine, 1) + Encryptor.encrypt(fueltank, 1)
					+ Encryptor.encrypt(cargobay, 1) + Encryptor.encrypt(radiator, 1) + Encryptor.encrypt(hullx, 1)
					+ Encryptor.encrypt(biox, 1) + Encryptor.encrypt(drillx, 1) + Encryptor.encrypt(batx, 1)
					+ Encryptor.encrypt(dyn, 1) + Encryptor.encrypt(tnt, 1) + Encryptor.encrypt(tel1, 1)
					+ Encryptor.encrypt(tel2, 1) + Encryptor.encrypt(drillfix, 1) + Encryptor.encrypt(hullfix, 1);
			int _x = 0, arr[] = { tractor, coalb, petrolr, jet, gasb, nuc, nucx };
			if (explorer == true)
				_x = 1;
			str += Encryptor.encryptBool(arr) + Encryptor.encrypt(score, 5) + Encryptor.encrypt(transc, 1)
					+ Encryptor.encrypt(sonb, 1) + Encryptor.encrypt(iceb, 1) + Encryptor.encrypt(time, 4)
					+ Encryptor.encrypt(shield, 1) + Encryptor.encrypt(radb, 1) + Encryptor.encrypt(_x, 1)
					+ Encryptor.encrypt(mith, 2) + Encryptor.encrypt(unob, 2) + Encryptor.encrypt(adam, 2);
			cnt += (money + (int) Math.round(fuel) + (int) Math.round(battery) + (int) Math.round(drill) + hull + engine
					+ fueltank + cargobay + radiator + hullx + biox + drillx + batx + dyn + tnt + tel1 + tel2 + drillfix
					+ hullfix + tractor + coalb + petrolr + jet + gasb + nuc + nucx + score + transc + sonb + iceb
					+ mith + unob + adam + time + radb + shield);
			str += Encryptor.encrypt(cnt, 5);
			file.println(str);
			file.close();
		} catch (IOException exp) {
			System.out.println("File not saved");
		}
	}

	void loadMap() {
		int num11 = 0;
		try {
			int cntr, cnt = 0, strt = 0;
			BufferedReader file = new BufferedReader(
					new InputStreamReader(new FileInputStream(getJarPath() + inputstr + ".ml")));
			String str;
			str = file.readLine(); // st. valentines
			str = file.readLine(); // read level
			if (str.charAt(0) == '1') {
				level = 1;
				cnt += 33;
				money_factor = 15;
				score_factor = 5;
			} else if (str.charAt(0) == '2') {
				level = 2;
				cnt += 66;
				money_factor = 12;
				score_factor = 7;
			} else if (str.charAt(0) == '3') {
				level = 3;
				cnt += 99;
				money_factor = 10;
				score_factor = 10;
			}
			for (int j = strt; j < 3000; j++) {
				str = file.readLine();
				for (int i = 0; i < 48; i++) {
					map[i][j] = (byte) (str.charAt(i) - 33);
					cnt += (int) (str.charAt(i) - 33);
				}
			}
			str = file.readLine(); // data line
			money = Encryptor.decrypt(str.substring(0, 5), 5);
			cnt += money;
			fuel = Encryptor.decrypt(str.substring(5, 7), 2);
			cnt += (int) fuel;
			battery = Encryptor.decrypt(str.substring(7, 10), 3);
			cnt += (int) battery;
			drill = Encryptor.decrypt(str.substring(10, 13), 3);
			cnt += (int) drill;
			hull = Encryptor.decrypt(str.substring(13, 15), 2);
			cnt += hull;
			engine = Encryptor.decrypt(str.substring(15, 16), 1);
			cnt += engine;
			fueltank = Encryptor.decrypt(str.substring(16, 17), 1);
			cnt += fueltank;
			cargobay = Encryptor.decrypt(str.substring(17, 18), 1);
			cnt += cargobay;
			radiator = Encryptor.decrypt(str.substring(18, 19), 1);
			cnt += radiator;
			hullx = Encryptor.decrypt(str.substring(19, 20), 1);
			cnt += hullx;
			biox = Encryptor.decrypt(str.substring(20, 21), 1);
			cnt += biox;
			drillx = Encryptor.decrypt(str.substring(21, 22), 1);
			cnt += drillx;
			batx = Encryptor.decrypt(str.substring(22, 23), 1);
			cnt += batx;
			dyn = Encryptor.decrypt(str.substring(23, 24), 1);
			cnt += dyn;
			tnt = Encryptor.decrypt(str.substring(24, 25), 1);
			cnt += tnt;
			tel1 = Encryptor.decrypt(str.substring(25, 26), 1);
			cnt += tel1;
			tel2 = Encryptor.decrypt(str.substring(26, 27), 1);
			cnt += tel2;
			drillfix = Encryptor.decrypt(str.substring(27, 28), 1);
			cnt += drillfix;
			hullfix = Encryptor.decrypt(str.substring(28, 29), 1);
			cnt += hullfix;
			int arr[] = new int[7];
			Encryptor.decryptBool(str.substring(29, 31), arr);
			tractor = arr[0];
			cnt += tractor;
			coalb = arr[1];
			cnt += coalb;
			petrolr = arr[2];
			cnt += petrolr;
			jet = arr[3];
			cnt += jet;
			gasb = arr[4];
			cnt += gasb;
			nuc = arr[5];
			cnt += nuc;
			nucx = arr[6];
			cnt += nucx;
			score = Encryptor.decrypt(str.substring(31, 36), 5);
			cnt += score;
			transc = Encryptor.decrypt(str.substring(36, 37), 1);
			cnt += transc;
			sonb = Encryptor.decrypt(str.substring(37, 38), 1);
			cnt += sonb;
			iceb = Encryptor.decrypt(str.substring(38, 39), 1);
			cnt += iceb;
			time = Encryptor.decrypt(str.substring(39, 43), 4);
			cnt += time;
			shield = Encryptor.decrypt(str.substring(43, 44), 1);
			cnt += shield;
			radb = Encryptor.decrypt(str.substring(44, 45), 1);
			cnt += radb;
			num11 = Encryptor.decrypt(str.substring(45, 46), 1);
			cnt += num11;
			mith = Encryptor.decrypt(str.substring(46, 48), 2);
			cnt += mith;
			unob = Encryptor.decrypt(str.substring(48, 50), 2);
			cnt += unob;
			adam = Encryptor.decrypt(str.substring(50, 52), 2);
			cnt += adam;
			cntr = Encryptor.decrypt(str.substring(52, 57), 5);
			transy = transarr[transc];
			cnt += 128;
			System.out.println("loaded:" + cntr + ",calc:" + cnt);
			System.out.println("money:" + money + ",fuel:" + fuel + ",battery:" + battery + ",drill:" + drill + ",hull:"
					+ hull + ",engine:" + engine + ",fueltank:" + fueltank + ",cargobay:" + cargobay + ",radiator:"
					+ radiator + ",hullx:" + hullx + ",biox:" + biox + ",drillx:" + drillx + ",batx:" + batx + ",dyn:"
					+ dyn + ",tnt:" + tnt + ",tel1:" + tel1 + ",tel2:" + tel2 + ",drillfix" + drillfix + ",hullfix:"
					+ hullfix + ",tractor:" + tractor + ",coalb:" + coalb + ",petrolr:" + petrolr + ",jet:" + jet
					+ ",gasb:" + gasb + ",nuc:" + nuc + ",nucx:" + nucx + ",score:" + score + ",transc:" + transc
					+ ",sonb:" + sonb + ",iceb:" + iceb + ",time:" + time + ",shield:" + shield + ",radb:" + radb
					+ ",explorer:" + explorer + ",mith:" + mith + ",unob:" + unob + ",adam:" + adam);
			if (cnt != cntr) {
				msg = true;
				msgstr = "Save file has been modified. All data has been erased.";
				PrintStream ps = new PrintStream(new FileOutputStream(getJarPath() + inputstr + ".ml"));
				ps.println(":(");
				ps.close();
			}
		} catch (IOException exp) {
		}
		loadCheat();
		engmax = StatHolder.getUpgradeAmount(engine - 1);
		fuelmax = StatHolder.getUpgradeAmount(6 + fueltank);
		cargomax = StatHolder.getUpgradeAmount(13 + cargobay);
		tempmax = StatHolder.getUpgradeAmount(20 + radiator);
		hullmax = StatHolder.getUpgradeAmount(27 + hullx);
		biomax = StatHolder.getUpgradeAmount(34 + biox);
		drillmax = StatHolder.getUpgradeAmount(41 + drillx);
		batmax = StatHolder.getUpgradeAmount(48 + batx);
		if (engine == 8) {
			engmax = 3000;
			for (int i = 0; i < 7; i++)
				upgrades[0][i] = true;
		} else
			for (int i = 0; i < engine; i++)
				upgrades[0][i] = true;
		if (fueltank == 8) {
			fuelmax = 6000;
			for (int i = 0; i < 7; i++)
				upgrades[1][i] = true;
		} else
			for (int i = 0; i < fueltank; i++)
				upgrades[1][i] = true;
		if (cargobay == 8) {
			cargomax = 15000;
			for (int i = 0; i < 7; i++)
				upgrades[2][i] = true;
		} else
			for (int i = 0; i < cargobay; i++)
				upgrades[2][i] = true;
		if (hullx == 8) {
			hullmax = 2000;
			for (int i = 0; i < 7; i++)
				upgrades[4][i] = true;
		} else
			for (int i = 0; i < hullx; i++)
				upgrades[4][i] = true;
		if (radiator == 8) {
			tempmax = 1200;
			for (int i = 0; i < 7; i++)
				upgrades[3][i] = true;
		} else
			for (int i = 0; i < radiator; i++)
				upgrades[3][i] = true;
		for (int i = 0; i < biox; i++)
			upgrades[5][i] = true;
		for (int i = 0; i < drillx; i++)
			upgrades[6][i] = true;
		for (int i = 0; i < batx; i++)
			upgrades[7][i] = true;
		if (radiator == 1)
			radf = 0.001;
		else if (radiator == 2)
			radf = 0.002;
		else if (radiator == 3)
			radf = 0.003;
		else if (radiator == 4)
			radf = 0.006;
		else if (radiator == 5)
			radf = 0.01;
		else if (radiator == 6)
			radf = 0.02;
		else if (radiator == 7)
			radf = 0.03;
		else if (radiator == 8)
			radf = 0.06;
		if (score < 100 * score_factor)
			bonus = 100 * score_factor;
		else if (score < 500 * score_factor)
			bonus = 500 * score_factor;
		else if (score < 2000 * score_factor)
			bonus = 2000 * score_factor;
		else if (score < 10000 * score_factor)
			bonus = 10000 * score_factor;
		else if (score < 100000 * score_factor)
			bonus = 100000 * score_factor;
		else if (score < 300000 * score_factor)
			bonus = 300000 * score_factor;
		else if (score < 1000000 * score_factor)
			bonus = 1000000 * score_factor;
		else if (score < 2500000 * score_factor)
			bonus = 25000000 * score_factor;
		else if (score < 10000000 * score_factor)
			bonus = 10000000 * score_factor;
		else if (score < 20000000 * score_factor)
			bonus = 20000000 * score_factor;
		else if (score < 100000000 * score_factor)
			bonus = 100000000 * score_factor;
		loadImages();
		loadHull();
		loadDrill();
		if (num11 == 1) {
			System.out.println("explorer");
			explorer = true;
			loadImages2();
			cargomax = 20000;
			fuelmax = 6000;
			engmax = 5000;
			hullmax = 10000;
		} else
			explorer = false;
		for (int i = 0; i < 48; i++)
			for (int j = 0; j < 3000; j++)
				mapmode[i][j] = (byte) (Math.random() * 6);
		setWeight();
		menu = false;
		startpage = false;
		loadGameTiles();
		redraw();
		if (music == true) {
			theme.stop();
			theme = new Sound("images/Sounds/game_theme.mid");
			theme.loop();
		}
		if (sounds == true) {
			is_wind = true;
			s_wind.loop();
		}
	}

	public void loadCheat() {
		if (cheat == 1)
			money = 1000000;
		else if (cheat == 2) {
			engine = 7;
			engmax = 1500;
		} else if (cheat == 3) {
			fueltank = 7;
			fuelmax = StatHolder.getUpgradeAmount(6 + fueltank);
			fuel = fuelmax;
		} else if (cheat == 4) {
			cargobay = 7;
			cargomax = 6000;
		} else if (cheat == 5) {
			radiator = 7;
			tempmax = 600;
			radf = 0.03;
		} else if (cheat == 6) {
			hullx = 7;
			hullmax = 1000;
		} else if (cheat == 7) {
			biox = 7;
			biomax = 60000;
		} else if (cheat == 8) {
			drillx = 7;
			drillmax = StatHolder.getUpgradeAmount(41 + drillx);
			drill = drillmax;
		} else if (cheat == 9) {
			batx = 7;
			batmax = 10000;
		} else if (cheat == 10)
			for (int j = 0; j <= 1200; j++)
				map[24][j] = space;
		else if (cheat == 11)
			globe = true;
	}

	void loadHull() {
		if (hullx == 1) {
			hlx = 0;
			hly = 0;
			hull_l = getImage("images/hull_l1.png");
			hull_r = getImage("images/hull_r1.png");
		} else if (hullx == 2) {
			hlx = 0;
			hly = 0;
			hull_l = getImage("images/hull_l2.png");
			hull_r = getImage("images/hull_r2.png");
		} else if (hullx == 3) {
			hlx = -3;
			hly = 2;
			hull_l = getImage("images/hull_l3.png");
			hull_r = getImage("images/hull_r3.png");
		} else if (hullx == 4) {
			hlx = -3;
			hly = 1;
			hull_l = getImage("images/hull_l4.png");
			hull_r = getImage("images/hull_r4.png");
		} else if (hullx == 5) {
			hlx = -3;
			hly = 1;
			hull_l = getImage("images/hull_l5.png");
			hull_r = getImage("images/hull_r5.png");
		} else if (hullx == 6) {
			hlx = -1;
			hly = 1;
			hull_l = getImage("images/hull_l6.png");
			hull_r = getImage("images/hull_r6.png");
		} else if (hullx == 7) {
			hlx = -1;
			hly = 1;
			hull_l = getImage("images/hull_l7.png");
			hull_r = getImage("images/hull_r7.png");
		} else if (hullx == 8) {
			hlx = 0;
			hly = 1;
			hull_l = getImage("images/hull_l8.png");
			hull_r = getImage("images/hull_r8.png");
		}
		if (globe == true && hullx == 1) {
			hlx = -1;
			hly = 1;
			hull_l = getImage("images/extra/hull_l1.png");
			hull_r = getImage("images/extra/hull_r1.png");
		}
		if (globe == true && hullx == 2) {
			hlx = -1;
			hly = 1;
			hull_l = getImage("images/extra/hull_l2.png");
			hull_r = getImage("images/extra/hull_r2.png");
		}
	}

	void loadDrill() {
		dig_r0 = getImage("images/drills/dig_r0_" + drillx + ".png");
		dig_r1 = getImage("images/drills/dig_r1_" + drillx + ".png");
		dig_r2 = getImage("images/drills/dig_r2_" + drillx + ".png");
		dig_l0 = getImage("images/drills/dig_l0_" + drillx + ".png");
		dig_l1 = getImage("images/drills/dig_l1_" + drillx + ".png");
		dig_l2 = getImage("images/drills/dig_l2_" + drillx + ".png");
		dig_dr0 = getImage("images/drills/dig_d0_" + drillx + ".png");
		dig_dr1 = getImage("images/drills/dig_d1_" + drillx + ".png");
		dig_dr2 = getImage("images/drills/dig_d2_" + drillx + ".png");
		dig_dl0 = getImage("images/drills/dig_d0_" + drillx + ".png");
		dig_dl1 = getImage("images/drills/dig_d1_" + drillx + ".png");
		dig_dl2 = getImage("images/drills/dig_d2_" + drillx + ".png");
		if (globe == true && (drillx == 2 || drillx == 3)) {
			dig_r0 = getImage("images/extra/dig_r0_" + drillx + ".png");
			dig_r1 = getImage("images/extra/dig_r1_" + drillx + ".png");
			dig_r2 = getImage("images/extra/dig_r2_" + drillx + ".png");
			dig_l0 = getImage("images/extra/dig_l0_" + drillx + ".png");
			dig_l1 = getImage("images/extra/dig_l1_" + drillx + ".png");
			dig_l2 = getImage("images/extra/dig_l2_" + drillx + ".png");
			dig_dr0 = getImage("images/extra/dig_d0_" + drillx + ".png");
			dig_dr1 = getImage("images/extra/dig_d1_" + drillx + ".png");
			dig_dr2 = getImage("images/extra/dig_d2_" + drillx + ".png");
			dig_dl0 = getImage("images/extra/dig_d0_" + drillx + ".png");
			dig_dl1 = getImage("images/extra/dig_d1_" + drillx + ".png");
			dig_dl2 = getImage("images/extra/dig_d2_" + drillx + ".png");
		}
	}

	void loadHighScores() {
		try {
			URL urlread = new URL("http://mlu.scorpiontek.org/highscore.php?action=list&access_code=6589415766584932");
			InputStream in = urlread.openStream();
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			// BufferedReader br = new BufferedReader(new InputStreamReader(new
			// FileInputStream("file.txt")));
			String str1 = "";
			highscores = new Vector();
			while ((str1 = br.readLine()) != null) {
				str1 += " ";
				int cnt = 0, mark = 0, _id = 0, _score = 0, _mtime = 0;
				String _name = "", _date = "", _etime = "", _extra = "", _ip = "", _extra0 = "", _ltime = "";
				for (int i = 0; i < str1.length(); i++)
					if (str1.charAt(i) == ' ') {
						cnt++;
						if (cnt == 1) {
							_id = Integer.parseInt(str1.substring(mark, i));
							mark = i + 1;
						} else if (cnt == 2) {
							_name = str1.substring(mark, i);
							mark = i + 1;
						} else if (cnt == 3) {
							_score = Integer.parseInt(str1.substring(mark, i));
							mark = i + 1;
						} else if (cnt == 4) {
							_mtime = Integer.parseInt(str1.substring(mark, i));
							mark = i + 1;
						} else if (cnt == 5) {
							_date = str1.substring(mark, i);
							mark = i + 1;
						} else if (cnt == 6) {
							_ltime = str1.substring(mark, i);
							mark = i + 1;
						} else if (cnt == 7) {
							_ip = str1.substring(mark, i);
							mark = i + 1;
						} else if (cnt == 8) {
							_etime = str1.substring(mark, i);
							mark = i + 1;
						} else if (cnt == 9) {
							_extra = str1.substring(mark, i);
							mark = i + 1;
						}
					}
				highscores.add(new Score(_id, _name, _score, _mtime, _date, _ltime, _ip, _etime, _extra));
			}
		} catch (IOException ex) {
			System.out.println("Error connectiong to the database");
		}
	}

	void loadGadgetIcon() {
		if (sely == 0)
			ximgs[3] = getImage("images/igadgets/tel1.png");
		else if (sely == 1)
			ximgs[3] = getImage("images/igadgets/tel2.png");
		else if (sely == 2)
			ximgs[3] = getImage("images/igadgets/dyn.png");
		else if (sely == 3)
			ximgs[3] = getImage("images/igadgets/tnt.png");
		else if (sely == 4)
			ximgs[3] = getImage("images/igadgets/shield.png");
		else if (sely == 5)
			ximgs[3] = getImage("images/igadgets/hullfix.png");
		else if (sely == 6)
			ximgs[3] = getImage("images/igadgets/drillfix.png");
		else if (sely == 7)
			ximgs[3] = getImage("images/igadgets/sonb.png");
		else if (sely == 8)
			ximgs[3] = getImage("images/igadgets/iceb.png");
		else if (sely == 9)
			ximgs[3] = getImage("images/igadgets/radb.png");
		else if (sely == 10)
			ximgs[3] = getImage("images/igadgets/coalb.png");
		else if (sely == 11)
			ximgs[3] = getImage("images/igadgets/petrolr.png");
		else if (sely == 12)
			ximgs[3] = getImage("images/igadgets/gasb.png");
		else if (sely == 13)
			ximgs[3] = getImage("images/igadgets/nuc.png");
		else if (sely == 14)
			ximgs[3] = getImage("images/igadgets/nucx.png");
		else if (sely == 15)
			ximgs[3] = getImage("images/igadgets/booster.png");
		else if (sely == 16)
			ximgs[3] = getImage("images/igadgets/tractor1.png");
		else if (sely == 17)
			ximgs[3] = getImage("images/igadgets/supership.png");
	}

	void loadImages() {
		tracks = getImage("images/tracks.png");
		gate = getImage("images/gate.png");
		destroyed = getImage("images/destroyed.png");
		radiation = getImage("images/radiation.png");
		sky = getImage("images/sky.jpg");
		bar1 = getImage("images/barbot.png");
		bar2 = getImage("images/bartop.png");
		for (int i = 0; i < 6; i++)
			ground[i] = getImage("images/ground" + i + ".JPG");
		for (int i = 0; i < 6; i++)
			imagma[i] = getImage("images/magma" + i + ".png");
		mission_img = getImage("images/mission.png");
		rock = getImage("images/rock.png");
		shmootz = getImage("images/shmootz.png");
		marbs = getImage("images/marbs.png");
		grans = getImage("images/grans.png");
		base = getImage("images/base1.png");
		beamh = getImage("images/beamh.png");
		beamv = getImage("images/beamv.png");
		inventory = getImage("images/inventory.png");
		shield_img = getImage("images/shield.png");
		fly_r0 = getImage("images/fly_0.png");
		fly_r1 = getImage("images/fly_1.png");
		fly_r2 = getImage("images/fly_2.png");
		fly_r3 = getImage("images/fly_3.png");
		fly_l0 = getImage("images/fly_0.png");
		fly_l1 = getImage("images/fly_1.png");
		fly_l2 = getImage("images/fly_2.png");
		fly_l3 = getImage("images/fly_3.png");
		flame_r = getImage("images/flame.png");
		flame_l = getImage("images/flame.png");
		nodrill_l = getImage("images/nodrill_l.png");
		nodrill_r = getImage("images/nodrill_r.png");
		grh = getImage("images/grh.png");
		grv = getImage("images/grv.png");
		grul1 = getImage("images/grul1.png");
		grul2 = getImage("images/grul2.png");
		grur1 = getImage("images/grur1.png");
		grur2 = getImage("images/grur2.png");
		grdl1 = getImage("images/grdl1.png");
		grdl2 = getImage("images/grdl2.png");
		grdr1 = getImage("images/grdr1.png");
		grdr2 = getImage("images/grdr2.png");
		// if(globe==true)base=getImage("images/extra/base.png");
	}

	void loadImages2() {
		bar1 = getImage("images/bar2bot.png");
		bar2 = getImage("images/bar2top.png");
		bomblamp = getImage("images/bomblamp.png");
		dig_r0 = getImage("images/ship_r.png");
		dig_l0 = getImage("images/ship_l.png");
		flame_r = getImage("images/ship_ur.png");
		flame_l = getImage("images/ship_ul.png");
		fly_r0 = getImage("images/swim_r0.png");
		fly_r1 = getImage("images/swim_r1.png");
		fly_r2 = getImage("images/swim_r2.png");
		fly_r3 = getImage("images/swim_r3.png");
		fly_l0 = getImage("images/swim_l0.png");
		fly_l1 = getImage("images/swim_l1.png");
		fly_l2 = getImage("images/swim_l2.png");
		fly_l3 = getImage("images/swim_l3.png");
	}

	void loadGameTiles() {
		imgs[1] = getImage("images/coal.png");
		imgs[2] = getImage("images/petrol.png");
		imgs[3] = getImage("images/iron.png");
		imgs[4] = getImage("images/copper.png");
		imgs[5] = getImage("images/quartz.png");
		imgs[6] = getImage("images/lead.png");
		imgs[7] = getImage("images/bronze.png");
		imgs[8] = getImage("images/silver.png");
		imgs[9] = getImage("images/gold.png");
		imgs[10] = getImage("images/palladium.png");
		imgs[11] = getImage("images/cesium.png");
		imgs[12] = getImage("images/platinum.png");
		imgs[13] = getImage("images/opal.png");
		imgs[14] = getImage("images/topaz.png");
		imgs[15] = getImage("images/emerald.png");
		imgs[16] = getImage("images/saphire.png");
		imgs[17] = getImage("images/ruby.png");
		imgs[18] = getImage("images/diamond.png");
		imgs[19] = getImage("images/amazonite.png");
		imgs[20] = getImage("images/thorium.png");
		imgs[21] = getImage("images/uranium.png");
		imgs[22] = getImage("images/plutonium.png");
		imgs[23] = getImage("images/moonstone.png");
		imgs[24] = getImage("images/starstone.png");
		imgs[25] = getImage("images/sunstone.png");
		imgs[26] = getImage("images/kryptonite.png");
		imgs[27] = getImage("images/dark matter.png");
		imgs[28] = getImage("images/gas.png");
		imgs[29] = getImage("images/granite.png");
		imgs[30] = getImage("images/marble.png");
		imgs[31] = getImage("images/lava.png");
		imgs[32] = getImage("images/adamite.png");
		imgs[33] = getImage("images/selenite.png");
		imgs[34] = getImage("images/gyrite.png");
		imgs[35] = getImage("images/froyite.png");
		imgs[36] = getImage("images/aquamarine.png");
		imgs[37] = getImage("images/mimetite.png");
		imgs[38] = getImage("images/orpiment.png");
		imgs[39] = getImage("images/caledonite.png");
		imgs[40] = getImage("images/fedgarnet.png");
		imgs[41] = getImage("images/tanzanite.png");
		imgs[42] = getImage("images/eng8.png");
		imgs[43] = getImage("images/fuel8.png");
		imgs[44] = getImage("images/cargo8.png");
		imgs[45] = getImage("images/hull8.png");
		imgs[46] = getImage("images/rad8.png");
		imgs[47] = getImage("images/mithril.png");
		imgs[48] = getImage("images/unobtainium.png");
		imgs[49] = getImage("images/adamantium.png");
		imgs[50] = getImage("images/ice9.png");
		imgs[51] = getImage("images/bomb1.png");
		imgs[52] = getImage("images/bomb2.png");
		imgs[53] = getImage("images/bomb3.png");
		imgs[54] = getImage("images/skeleton.png");
		imgs[55] = getImage("images/abandoned_ship.jpg");
		imgs[magma] = getImage("images/magma.jpg");
		if (globe == true) {
			imgs[7] = getImage("images/extra/bronze.png");
			imgs[11] = getImage("images/extra/cesium.png");
			imgs[1] = getImage("images/extra/coal.png");
			imgs[5] = getImage("images/extra/quartz.png");
			imgs[15] = getImage("images/extra/emerald.png");
			imgs[9] = getImage("images/extra/gold.png");
			imgs[4] = getImage("images/extra/copper.png");
			imgs[8] = getImage("images/extra/silver.png");
			imgs[17] = getImage("images/extra/ruby.png");
			imgs[3] = getImage("images/extra/iron.png");
			imgs[13] = getImage("images/extra/opal.png");
			imgs[2] = getImage("images/extra/petrol.png");
			imgs[21] = getImage("images/extra/uranium.png");
		}
	}

	void loadMenuTiles() {
		imgs[0] = getImage("images/upgrades/eng1.jpg");
		imgs[1] = getImage("images/upgrades/eng2.jpg");
		imgs[2] = getImage("images/upgrades/eng3.jpg");
		imgs[3] = getImage("images/upgrades/eng4.jpg");
		imgs[4] = getImage("images/upgrades/eng5.jpg");
		imgs[5] = getImage("images/upgrades/eng6.jpg");
		imgs[6] = getImage("images/upgrades/eng7.jpg");
		imgs[7] = getImage("images/upgrades/fuel1.jpg");
		imgs[8] = getImage("images/upgrades/fuel2.jpg");
		imgs[9] = getImage("images/upgrades/fuel3.jpg");
		imgs[10] = getImage("images/upgrades/fuel4.jpg");
		imgs[11] = getImage("images/upgrades/fuel5.jpg");
		imgs[12] = getImage("images/upgrades/fuel6.jpg");
		imgs[13] = getImage("images/upgrades/fuel7.jpg");
		imgs[14] = getImage("images/upgrades/cargo1.jpg");
		imgs[15] = getImage("images/upgrades/cargo2.jpg");
		imgs[16] = getImage("images/upgrades/cargo3.jpg");
		imgs[17] = getImage("images/upgrades/cargo4.jpg");
		imgs[18] = getImage("images/upgrades/cargo5.jpg");
		imgs[19] = getImage("images/upgrades/cargo6.jpg");
		imgs[20] = getImage("images/upgrades/cargo7.jpg");
		imgs[21] = getImage("images/upgrades/rad1.jpg");
		imgs[22] = getImage("images/upgrades/rad2.jpg");
		imgs[23] = getImage("images/upgrades/rad3.jpg");
		imgs[24] = getImage("images/upgrades/rad4.jpg");
		imgs[25] = getImage("images/upgrades/rad5.jpg");
		imgs[26] = getImage("images/upgrades/rad6.jpg");
		imgs[27] = getImage("images/upgrades/rad7.jpg");
		imgs[28] = getImage("images/upgrades/hull1.jpg");
		imgs[29] = getImage("images/upgrades/hull2.jpg");
		imgs[30] = getImage("images/upgrades/hull3.jpg");
		imgs[31] = getImage("images/upgrades/hull4.jpg");
		imgs[32] = getImage("images/upgrades/hull5.jpg");
		imgs[33] = getImage("images/upgrades/hull6.jpg");
		imgs[34] = getImage("images/upgrades/hull7.jpg");
		imgs[35] = getImage("images/upgrades/bio1.jpg");
		imgs[36] = getImage("images/upgrades/bio2.jpg");
		imgs[37] = getImage("images/upgrades/bio3.jpg");
		imgs[38] = getImage("images/upgrades/bio4.jpg");
		imgs[39] = getImage("images/upgrades/bio5.jpg");
		imgs[40] = getImage("images/upgrades/bio6.jpg");
		imgs[41] = getImage("images/upgrades/bio7.jpg");
		imgs[42] = getImage("images/upgrades/drill2.jpg");
		imgs[43] = getImage("images/upgrades/drill1.jpg");
		imgs[44] = getImage("images/upgrades/drill3.jpg");
		imgs[45] = getImage("images/upgrades/drill4.jpg");
		imgs[46] = getImage("images/upgrades/drill5.jpg");
		imgs[47] = getImage("images/upgrades/drill6.jpg");
		imgs[48] = getImage("images/upgrades/drill7.jpg");
		imgs[49] = getImage("images/upgrades/bat1.jpg");
		imgs[50] = getImage("images/upgrades/bat2.jpg");
		imgs[51] = getImage("images/upgrades/bat3.jpg");
		imgs[52] = getImage("images/upgrades/bat4.jpg");
		imgs[53] = getImage("images/upgrades/bat5.jpg");
		imgs[54] = getImage("images/upgrades/bat6.jpg");
		imgs[55] = getImage("images/upgrades/bat7.jpg");
		if (globe == true) {
			imgs[43] = getImage("images/extra/drill2.png");
			imgs[44] = getImage("images/extra/drill3.png");
			imgs[28] = getImage("images/extra/hull1.png");
			imgs[29] = getImage("images/extra/hull2.png");
		}
	}

	void loadSwim() {
		imgs[1] = getImage("images/rock1.png");
		imgs[2] = getImage("images/rock2.png");
		imgs[3] = getImage("images/rock3.png");
		hspeed = 0;
		vspeed = 3;
		rocks = 0;
		timr1 = 0;
		fallspd = rh;
		for (int i = 0; i < SHM; i++)
			grexists[i] = false;
		for (int i = 0; i < RCK; i++)
			rockexists[i] = false;
		field = createImage(800, 600);
		Graphics gI = field.getGraphics();
		for (int i = 0; i < rw; i += 50)
			for (int j = 0; j < rh; j += 50)
				gI.drawImage(imgs[magma], i, j, null, this);
		for (int i = 0; i < 100; i++) {
			int x1 = (int) Math.round(Math.random() * (rw - 50)), y1 = (int) Math.round(Math.random() * (rh - 50));
			gI.drawImage(imgs[magma], x1, y1, null, this);
		}
	}

	void loadSounds() {
		shipexpl = new Sound("images/Sounds/shipexpl_w.wav");
		s_clank = new Sound("images/Sounds/clank_w.wav");
		s_beep = new Sound("images/Sounds/beep.wav");
		s_earthquake = new Sound("images/Sounds/earthquake_w.wav");
		s_tnt = new Sound("images/Sounds/tnt_w.wav");
		s_dynamite = new Sound("images/Sounds/dynamite_w.wav");
		s_jet = new Sound("images/Sounds/jet_w.wav");
		s_prop = new Sound("images/Sounds/prop_wav.wav");
		s_drill = new Sound("images/Sounds/drill.ogg");
		s_gate = new Sound("images/Sounds/gate_close.ogg");
		s_lava = new Sound("images/Sounds/lava.ogg");
		s_shield = new Sound("images/Sounds/shield.ogg");
		s_wind = new Sound("images/Sounds/wind.ogg");
		s_boom = new Sound("images/Sounds/boom.ogg");
		s_teleport = new Sound("images/Sounds/teleport.ogg");
		s_sonicbomb = new Sound("images/Sounds/sonicbomb.ogg");
		s_icebomb = new Sound("images/Sounds/icebomb.ogg");
	}

	int getRepairsCost() {
		double tot1 = 2.5 * (-fuel + fuelmax) + 3.0 * (-drill + drillmax) + 20.0 * hull;
		return (int) Math.round(tot1);
	}

	int getMineralProfit() {
		int tot1 = 0;
		for (int i = 1; i < 45; i++)
			tot1 += minerals[i] * StatHolder.getPrice(i) * money_factor / 10;
		return tot1;
	}

	double rand(double num) {
		return (double) num * Math.random();
	}

	double rand(int num) {
		return (double) num * Math.random();
	}

	public void shiftx(int num) {
		digx += num;
		rdr = false;
		labl1x += num;
		labl2x += num;
		explx += num;
		for (int i = 0; i < SHM; i++)
			grx[i] += num;
		for (int i = 0; i < RCK; i++)
			rockx[i] += num;
		ibombx += num;
		sbombx += num;
		nucbx += num;
		rbombx += num;
		redraw();
	}

	public void shifty(int num) {
		digy += num;
		ibomby += num;
		sbomby += num;
		nucby += num;
		rbomby += num;
		labl1y += num;
		labl2y += num;
		exply += num;
		for (int i = 0; i < SHM; i++)
			gry[i] += num;
		for (int i = 0; i < RCK; i++)
			rocky[i] += num;
		backColor();
		magmaFlow2();
		redraw();
		if (sounds == true) {
			if (is_lava == true && posy < 1200) {
				s_lava.stop();
				is_lava = false;
			} else if (posy > 1200 && is_lava == false) {
				s_lava.loop();
				is_lava = true;
			}
			if (num < 0 && posy > 10 && is_wind == true) {
				s_wind.stop();
				is_wind = false;
			} else if (num > 0 && posy <= 10 && is_wind == false) {
				s_wind.loop();
				is_wind = true;
			}
		}
		if (iposy == 2995 && num < 0) {
			String msg1 = "Warning! Do not go below this point if you do not have the supership and required"
					+ " items to complete the mission. Go back!";
			status = true;
			panel = new TextPanel(msg1, 170, 130, 65, 15);
			transImages();
			sely = 0;
			selx = 1;
		}
	}

	void transImages() {
		ximgs[0] = getImage("images/music_on.png");
		ximgs[1] = getImage("images/sounds_on.png");
		ximgs[2] = getImage("images/stop.png");
		ximgs[3] = getImage("images/datalog_green.png");
		ximgs[4] = getImage("images/datalog_red.png");
		ximgs[5] = getImage("images/datalog_yellow.png");
		if (sounds == true) {
			s_drill.stop();
			s_prop.stop();
			s_jet.stop();
		}
	}

	String makeString(int num) {
		String str = "" + num, str2 = "";
		int idx = 0;
		for (int i = str.length() - 1; i >= 0; i--) {
			str2 += str.charAt(i);
			idx++;
			if (idx % 3 == 0) {
				idx = 0;
				str2 += ",";
			}
		}
		str = "";
		for (int i = str2.length() - 1; i >= 0; i--)
			str += str2.charAt(i);
		if (str.charAt(0) == ',')
			str = str.substring(1, str.length());
		return str;
	}

	void explos(int type, int stx, int endx) {
		for (int i = stx; i <= endx; i++)
			for (int j = iposy - type; j <= iposy + type; j++) {
				if (map[i][j] == 50) {
					ibomb = true;
					itimr = 0;
					ibombx = (i - framex) * 50 + 25;
					ibomby = (j - framey) * 50 + 25;
				} else if (map[i][j] >= 51 && map[i][j] <= 53) {
					nucb = true;
					nucbx = (i - framex) * 50 + 25;
					nucby = (j - framey) * 50 + 25;
					nuctimr = 0;
					if (earthq == false) {
						eqtimr = 0;
						earthq = true;
						EarthQuake();
					}
					if (map[i][j] == 51) {
						nucrad = 10;
						hull += 200;
					} else if (map[i][j] == 52) {
						nucrad = 14;
						hull += 500;
					} else if (map[i][j] == 53) {
						nucrad = 20;
						hull += 1500;
					}
				} else if (map[i][j] == 30 && type == 2)
					map[i][j] = space;
				if (map[i][j] != 30)
					map[i][j] = space;
			}
	}

	void mineral(int x, int y) {
		int min = map[x][y];
		score += StatHolder.getPrice(min) * score_factor / 10;
		if (tr == false) {
			drill -= (0.003 * posy + 1);
			if (min == 29)
				drill -= (0.3 * posy + 100); // granite
			else if (min == 30)
				drill -= (0.75 * posy + 250); // marble
			if (posy > 1000 && earthq == false) {
				double t1 = Math.random(), t2 = 0.000015 * posy;
				if (t1 < t2) {
					eqtimr = 0;
					earthq = true;
					EarthQuake();
				}
			}
		}
		if (min >= 42 && min <= 46 && tr == false) {
			labl1 = true;
			labl1timr = 0;
			labl1x = digx;
			labl1y = digy;
			score += 1000000;
			labl1str2 = "";
			int idx = 0;
			if (min == 42) {
				labl1str1 = "Mega Engine: 3000 HP";
				engine = 8;
				engmax = 3000;
				idx = 0;
			} else if (min == 43) {
				labl1str1 = "Mega Fuel Tank: 6000 L";
				fueltank = 8;
				fuelmax = 6000;
				idx = 1;
			} else if (min == 44) {
				labl1str1 = "Mega Cargo Bay: 15000 lbs";
				cargobay = 8;
				cargomax = 15000;
				idx = 2;
			} else if (min == 45) {
				labl1str1 = "Mega Hull: 2000 Hits";
				hullx = 8;
				hullmax = 2000;
				idx = 4;
				loadHull();
			} else if (min == 46) {
				labl1str1 = "Mega Cooling System: 1200 F";
				radiator = 8;
				tempmax = 1200;
				radf = 0.06;
				idx = 3;
			}
			for (int i = 0; i < 7; i++)
				upgrades[idx][i] = true;
		} else if (min == 28) { // gas
			if ((gasb == 0 || tr == true) && shieldx == false) {
				hull += 20;
				makeExpl();
			} else if (battery + 50 <= batmax) {
				battery += 50;
				score += 100;
			}
		} else if (min == 31) { // lava
			if (explorer == false && shieldx == false) {
				hull += 100;
				makeExpl();
				temp += 100;
			} else if (battery < batmax - 100)
				battery += 100;
		} else if (min == 54) { // datalog skeleton
			status = true;
			selx = 0;
			sely = 0;
			loadDataLog(mapmode[x][y]);
			logarr[logc] = mapmode[x][y];
			logc++;
			ximgs[3] = getImage("images/datalog_green.png");
			ximgs[4] = getImage("images/datalog_red.png");
			ximgs[5] = getImage("images/datalog_yellow.png");
		} else if (min == 55) { // abandoned ship
			ximgs[3] = getImage("images/ship_window.png");
			loadShip();
			timr55 = 1;
		}
		if (StatHolder.getWeight(min) == 0)
			return;
		if (sounds == true)
			s_clank.play();
		if (StatHolder.getWeight(min) + cargo <= cargomax) {
			String str1 = StatHolder.getName(min);
			String str2 = "" + StatHolder.getPrice(min) * money_factor / 10 + "$  " + StatHolder.getWeight(min);
			if (min != 27)
				str2 += " lb";
			else
				str2 += " oz";
			labl1 = true;
			labl1x = digx;
			labl1y = digy;
			labl1timr = 0;
			labl1str1 = str1;
			labl1str2 = str2;
			if (min > 46) {
				if (min == 47)
					mith++;
				else if (min == 48)
					unob++;
				else if (min == 49)
					adam++;
				else if (min == 50) {
					if (ice9 > 0)
						ice9max = 10 + (int) Math.ceil(ice9);
					else
						ice9max = 10;
					ice9 += 10;
				} else if (min == 51) {
					bomb1++;
					nux += 50;
				} else if (min == 52) {
					bomb2++;
					nux += 120;
				} else if (min == 53) {
					bomb3++;
					nux += 300;
				}
				if (min != 50)
					cargo += StatHolder.getWeight(min);
				if (explorer == true) {
					if (min == 51)
						score += 30000; // bomb1
					else if (min == 52)
						score += 100000; // bomb2
					else if (min == 53)
						score += 250000; // bomb3
				}
			} else {
				minerals[min]++;
				cargo += StatHolder.getWeight(min);
				rx += StatHolder.getRx(min);
			}
			if (min == 1 && coalb == 1 && battery + 10 <= batmax && processor == true) { // coal
				battery += 10;
				minerals[min]--;
				cargo -= 40;
			} else if (min == 2 && petrolr == 1 && battery + 20 <= batmax && processor == true) { // petrol
				battery += 20;
				minerals[min]--;
				cargo -= 50;
			} else if (min == 20) { // thorium
				if (nuc == 1 && nucx == 0 && battery + 100 <= batmax && processor == true) {
					battery += 100;
					minerals[min]--;
					cargo -= 35;
					rx -= 100;
				}
				if (nucx == 1 && battery + 200 <= batmax) {
					battery += 200;
					minerals[min]--;
					cargo -= 35;
					rx -= 100;
				}
			} else if (min == 21 && battery + 150 <= batmax && processor == true) { // uranium
				if (nuc == 1 && nucx == 0) {
					battery += 150;
					minerals[min]--;
					cargo -= 30;
					rx -= 200;
				}
				if (nucx == 1 && battery + 300 <= batmax) {
					battery += 300;
					minerals[min]--;
					cargo -= 30;
					rx -= 200;
				}
			} else if (min == 22 && battery + 250 <= batmax && processor == true) { // plutonium
				if (nuc == 1 && nucx == 0) {
					battery += 250;
					minerals[min]--;
					cargo -= 25;
					rx -= 500;
				}
				if (nucx == 1 && battery + 500 <= batmax) {
					battery += 500;
					minerals[min]--;
					cargo -= 25;
					rx -= 500;
				}
			}
		} else {
			labl1x = digx;
			labl1 = true;
			labl1y = digy;
			labl1timr = 0;
			labl1str1 = "Cargo Bay is Full";
			labl1str2 = "";
		}
		if (tr == true && StatHolder.getWeight(min) > 0) {
			if (trdir == 0)
				map[iposx + 1][iposy] = 0;
			else if (trdir == 1)
				map[iposx][iposy - 1] = 0;
			else if (trdir == 2)
				map[iposx - 1][iposy] = 0;
			else if (trdir == 3)
				map[iposx][iposy + 1] = 0;
		}
		if (drill < 0)
			drill = 0;
		scorestr = makeString(score);
		if (rx > biomax && greentimr == 0)
			greentimr = 1;
		if (is_mission == true) {
			mission.update(min);
			boolean b1 = mission.isCompleted();
		}
	}

	void magmaFlow() { // screen
		if (iposy > 1190) {
			boolean flow = false;
			for (int i = framex; i < framex + 16; i++)
				for (int j = framey; j < framey + 12; j++) {
					if (map[i][j] == magma) {
						if (i > 0 && map[i - 1][j] == space) {
							flow = true;
							map[i - 1][j] = magma;
						}
						if (i < 47 && map[i + 1][j] == space) {
							flow = true;
							map[i + 1][j] = magma;
						}
						if (map[i][j + 1] == space) {
							flow = true;
							map[i][j + 1] = magma;
						}
					}
				}
			if (flow == true)
				magmaFlow();
			// formatMagma(false);
		}
	}

	void formatMagma(boolean full) {
		int x1 = framex, x2 = framex + 16;
		if (full == true) {
			x1 = 0;
			x2 = 48;
		}
		for (int i = x1; i < x2; i++)
			for (int j = framey; j < framey + 12; j++) {
				if (map[i][j] == magma && map[i][j - 1] == space)
					mapmode[i][j] = 0;
				else if (map[i][j] == magma && map[i][j - 1] != space)
					mapmode[i][j] = 10;
			}
		for (int i = x1; i < x2; i++)
			for (int j = framey; j < framey + 12; j++)
				if (map[i][j] == magma)
					if (i < 47 && map[i + 1][j] == magma) {
						if (mapmode[i][j] < 5)
							mapmode[i + 1][j] = (byte) ((int) mapmode[i][j] + 1);
						else if (mapmode[i][j] == 5)
							mapmode[i + 1][j] = 0;
					}
	}

	void magmaFlow2() { // complete
		if (iposy > 1190) {
			boolean flow = false;
			for (int i = 0; i < 48; i++)
				for (int j = framey; j < framey + 12; j++) {
					if (map[i][j] == magma) {
						if (i > 0 && map[i - 1][j] == space) {
							flow = true;
							map[i - 1][j] = magma;
						}
						if (i < 47 && map[i + 1][j] == space) {
							flow = true;
							map[i + 1][j] = magma;
						}
						if (map[i][j + 1] == space) {
							flow = true;
							map[i][j + 1] = magma;
						}
					}
				}
			if (flow == true)
				magmaFlow2();
			// formatMagma(true);
		}
	}

	void EarthQuake() {
		for (int i = 0; i < 300; i++) {
			int x1 = (int) Math.floor(47 * Math.random());
			int y1 = framey - 10 - (int) Math.round(100 * Math.random());
			byte temp = map[x1][y1];
			map[x1][y1] = map[x1 + 1][y1];
			map[x1 + 1][y1] = temp;
		}
		if (iposy < 2800)
			for (int i = 0; i < 300; i++) {
				int x1 = (int) Math.floor(47 * Math.random());
				int y1 = framey + 20 + (int) Math.round(100 * Math.random());
				byte temp = map[x1][y1];
				map[x1][y1] = map[x1 + 1][y1];
				map[x1 + 1][y1] = temp;
			}
		if (sounds == true)
			s_earthquake.loop();
	}

	void randomTel() {
		double num1 = iposy / 4 + 250, num2 = 1000 * Math.random();
		if (iposy > 1100 && num2 < num1) { // random teleport num2<num1
			int x1 = (int) Math.round(47 * Math.random()), y1 = (int) Math.round(Math.random() * 400 + framey - 400);
			while (map[x1][y1] != space) {
				x1 = (int) Math.round(47 * Math.random());
				y1 = (int) Math.round(Math.random() * 400 + framey - 400);
			}
			if (y1 < 0)
				y1 = 0;
			posx = x1;
			iposx = x1;
			posy = y1;
			mode = 1;
			iposy = y1;
			framex = (iposx / 3) * 3 - 3;
			if (framex < 0)
				framex = 0;
			if (framex > 32)
				framex = 32;
			framey = (iposy / 3) * 3 - 6;
			if (framey < 0)
				framey = 0;
			digx = (iposx - framex) * 50 - 10;
			digy = (iposy - framey) * 50 + 50;
			magmaFlow2();
			redraw();
		} else {
			digx = 390;
			digy = 250;
			posx = 23;
			posy = 4;
			framex = 15;
			framey = 0;
			mode = 1;
			iposy = 4;
		}
	}

	void setWeight() {
		int w = StatHolder.getUpgradeWeight(biox + 34) + StatHolder.getUpgradeWeight(drillx + 41)
				+ StatHolder.getUpgradeWeight(batx + 48);
		if (engine == 8)
			w += 700;
		else
			w += StatHolder.getUpgradeWeight(engine - 1);
		if (fueltank == 8)
			w += 200;
		else
			w += StatHolder.getUpgradeWeight(fueltank + 6);
		if (cargobay == 8)
			w += 1000;
		else
			w += StatHolder.getUpgradeWeight(cargobay + 13);
		if (radiator == 8)
			w += 175;
		else
			w += StatHolder.getUpgradeWeight(radiator + 20);
		if (hullx == 8)
			w += 1000;
		else
			w += StatHolder.getUpgradeWeight(hullx + 27);
		weight = w + 8;
		termspd = (int) (0.00065 * (weight + cargo + fuel) + 8.7);
	}

	void loadShip() { // Abandined ship with goodies
		panel = new TextPanel("Ship Inventory", 210, 220, 30, 12);
		int num1 = (int) (Math.random() * 5 + 3); // number of mineral types
		for (int i = 0; i < num1; i++) { // minerals
			int type = (int) (Math.random() * 27 + 1);
			int amount = (int) (Math.random() * 5 + 2);
			int w = StatHolder.getWeight(type) * amount;
			if (w + cargo <= cargomax) {
				panel.addLine("" + amount + " " + StatHolder.getName(type) + ", " + w + " lbs.");
				cargo += w;
				rx += amount * StatHolder.getRx(type);
				minerals[type]++;
				score += (amount * StatHolder.getPrice(type) * score_factor / 10);
				scorestr = makeString(score);
				if (rx > biomax)
					greentimr = 1;
			}
		}
		if (Math.random() < 0.2) { // upgrade 1
			int type = (int) (Math.random() * 56);
			String line = "" + StatHolder.getUpgradeName(type) + " ";
			if (type < 7) {
				line += "Engine";
				engmax = StatHolder.getUpgradeAmount(type);
				engine = type % 7 + 1;
			} else if (type < 14) {
				line += "Fuel Tank";
				fuelmax = StatHolder.getUpgradeAmount(type);
				fuel = fuelmax;
				fueltank = type % 7 + 1;
			} else if (type < 21) {
				line += "Cargo Bay";
				cargomax = StatHolder.getUpgradeAmount(type);
				cargobay = type % 7 + 1;
			} else if (type < 28) {
				line += "Radiator";
				tempmax = StatHolder.getUpgradeAmount(type);
				radiator = type % 7 + 1;
			} else if (type < 35) {
				line += "Hull";
				hullmax = StatHolder.getUpgradeAmount(type);
				hullx = type % 7 + 1;
			} else if (type < 42) {
				line += "Bio-X";
				biomax = StatHolder.getUpgradeAmount(type);
				biox = type % 7 + 1;
			} else if (type < 49) {
				line += "Drill";
				drillmax = StatHolder.getUpgradeAmount(type);
				drill = drillmax;
				drillx = type % 7 + 1;
			} else if (type < 56) {
				line += "Battery";
				batmax = StatHolder.getUpgradeAmount(type);
				battery = batmax;
				batx = type % 7 + 1;
			}
			setWeight();
			for (int j = 0; j <= type % 7; j++)
				upgrades[type / 7][j] = true;
			for (int j = type % 7 + 1; j < 7; j++)
				upgrades[type / 7][j] = false;
			panel.addLine(line);
		}
	}

	void newMission() {
		mission = new Mission(transy);
		is_mission = true;
		String msg1 = mission.makeString(minerals);
		JOptionPane.showMessageDialog(this, msg1, "Mission", JOptionPane.INFORMATION_MESSAGE);
	}

	String loadTrans(int transy1) {
		String msg1 = "";
		if (transy1 == 5)
			msg1 = "Good! You know how to drill. Now get as many minerals as you can and fly or drive"
					+ " to the base. The base is on the surface at the far right. Watch your fuel gauge. Unless you buy"
					+ " more fuel at the base, you will probably run out of fuel before any other dangerous events "
					+ "occur. While you're inside the base, sell all minerals and try to upgrade your fuel tank. The"
					+ " first upgrade is only $200. Don't forget to fix your drill and refuel!";
		else if (transy1 == 12)
			msg1 = "Some minerals glow. They are radioactive, so be careful while mining them."
					+ " They are relatively valuable, but can quickly raise your radiation level. If the level rises "
					+ "too much, it's harmful to you. If you plan to mine many radioactive minerals, then you will need"
					+ " to upgrade your Bio-X.";
		else if (transy1 == 70)
			msg1 = "The deeper you go, the more valuable minerals you find. Watch for silver and "
					+ "gold. They are 250$ and 750$ respectively";
		else if (transy1 == 100)
			msg1 = "The granite is harder than earth by about 100 times. It can really damage your"
					+ " drill if not carefull. A stick of dynamite can easily take care of it.";
		else if (transy1 == 110)
			msg1 = "Getting hot, don't you think? You haven't been neglecting your radiator, have "
					+ "you? If you have, you need to upgrade it. Otherwise, you won't be able to go any deeper. If you "
					+ "already done so, too bad! It was using your fuel for no purpose.";
		else if (transy1 == 150)
			msg1 = "You have probably noticed that the base has Coal Burner and Petroleum Refinery"
					+ " upgrades. Coal and Petroleum can be used to charge the battery when proper gadget is installed."
					+ " When the battery is charged, the fuel is no longer used. This can be helpfull when you have a "
					+ "small fuel tank.";
		else if (transy1 == 390)
			msg1 = "There are a lot of gems further down. They are more valuable than precious "
					+ "metals, they weigh little, and they are not radioactive. You will also see marble rocks. Marble"
					+ " is much harder than granite. I would advise you not to drill through it unless you have a very"
					+ " powerful drill and a lot of drill fixes. Dynamite won't affect marble, but TNT explosives are "
					+ "effective.";
		else if (transy1 == 590)
			msg1 = "There is a lot of lava below you, so be careful. You'll probably have to drill "
					+ "through it to get some precious minerals, so you'll need to upgrade your hull. Also, don't try to"
					+ " handle lava if you have a weak radiator. In addition, there are many gas pockets. They are hard"
					+ " to detect and can cause explosions. A Natural Gas Burner can be used to convert them to energy."
					+ " The N. G. Burner sucks up the gas and prevents explosions. Furthermore, you'll find new, extremely"
					+ " radioactive minerals below 6000 ft. These valuable minerals are Thorium, Uranium, and Plutonium."
					+ " They are powerful sources of alternative fuel that you can use if you install a nuclear reactor"
					+ " in your ship.";
		else if (transy1 == 790)
			msg1 = "Remains of an ancient Superboring Machine have been detected. All its blueprints"
					+ " have been lost, but its parts can be installed into your digger to make your vehicle more powerful."
					+ " Can you locate all the parts?";
		else if (transy1 == 996)
			msg1 = "Except for Diamond and Amazonite, most of the gems will not be found below this" + " depth.";
		else if (transy1 == 1190)
			msg1 = "At this high temerature, formation of large crystals occurs. You will need a "
					+ "large cargo bay, a powerful engine, and a lot of fuel to bring them back. Therefore, if you have"
					+ " not yet found all five parts of the Superboring Machine, you will need to do so. Otherwise, you "
					+ "won't be able to dig any further down. You will find many magma pockets. Be careful while using"
					+ " explosives or drilling near them. They will flow when exposed, and can flood all of your tunnels.";
		else if (transy1 == 1300)
			msg1 = "Radioactive metals are no longer available because of the extremely high "
					+ "temperatures. You have only your fuel tank and gas pockets to rely on.";
		else if (transy1 == 1500)
			msg1 = "We are as yet unable to determine the cause of the earthquakes and the "
					+ "teleportation problems which you have been experiencing earthquakes are very rare on Mars and our "
					+ "teleporters are the most reliable in the solar system. Rest assured, our researchers are working hard"
					+ " to determine the causes of these unexpected problems.";
		else if (transy1 == 1700)
			msg1 = "Our scientists have detemined that over-exploration of Mars caused its core to "
					+ "stop spinning. This is interfering with teleportation and causing earthquakes. The eventual outcome "
					+ "will probably be destruction of all life on Mars. There is only one solution: we have to make it down"
					+ " to the core and somehow restart it.";
		else if (transy1 == 2000)
			msg1 = "Our scientists and engineers have developed a plan to restart the Martian core."
					+ " We must build a super-ship that can travel to the core and make a series of explosions that would, "
					+ "in theory, do the job. In addition, below this depth existance of a very rare mineral called 'Ice9'"
					+ " has been detected. It is a super-coolant 9000 times more effective than regular ice. A ship cooling "
					+ "itself with Ice9 can withstand virtually any temperatures. Also, watch out for Martian bombs and nukes."
					+ " Don't blow one up!";
		else if (transy1 == 2400)
			msg1 = "It turns out that many minerals found below 20000 ft. can be used in building "
					+ "the super-ship. We need 1500 lbs of mithril, 4000 lbs of unobtainium, and 5000 lbs of adamantium. "
					+ "Plus, unobtainium can convert heat into energy that can power the ship. Collect all these minerals and"
					+ " we'll build the ship in no time.";
		else if (transy1 == 10000)
			msg1 = "Ok, this is important, so listen up. The super-ship has a few valuable gadgets. "
					+ "Number 1: The Unobtainium Heat Converter, which converts heat into energy at depths exceeding 12500"
					+ " ft. Number 2: The Unobtainium Lava Converter, which extracts energy from lava. Number 3: A Nuclear"
					+ " Bomb Fuel Extractor, which extracts explosives from Martian bombs. Get enough Ice9 for the trip, and"
					+ " at least 45,000 MTons of explosives in order to restart Mars' core. Once you reach Mars' mantle (the"
					+ " liquid layer at 30,000 ft+), you'll need to set off 5 explosions (enter key). We made it easy for "
					+ "you; all you have to do is to set an explosion off when the red lamp on you panel lights up. Watch "
					+ "out for any potential hazards. Use arrow keys to steer the ship, and Z and X keys to slow down and "
					+ "speed up. You can use TNT (space bar) to blow up any obsticles This is probably the last transmission"
					+ " you will get from us since teleportations are becoming increasingly difficult. However, if you"
					+ " successfully restart the core, we'll be able to teleport you safely to the surface.";
		return msg1;
	}

	void loadDataLog(int count) {
		String msg1 = "", msg2 = "";
		if (count == 0) {
			msg1 = "Bob & I have run out of hull repair kits, but the earthquakes...!! Below 10,000 ft., "
					+ "drilling or explosions seem to trigger these seismic events. Their falling rocks do so much damage...!!"
					+ "We managed to repair the ship enough to limp back above 8,000 ft., but we've used up too much fuel. We "
					+ "have no hope of reaching Mars Surface Base. Learn from our mistake: when you go that deep, bring as "
					+ "many hull repair kits as you can carry. If you find Bob, my cat, please feed him jawbreakers, nacho "
					+ "chips, and slushies. We leave our earthly belongings for you. Goodbye & good luck... P. 'Sparky' Sirquitz.";
		} else if (count == 1) {
			msg1 = "I feel queasy, not like I have a stomachache, but like my stomach is melting. A few "
					+ "minutes ago I decided that in the short run, two kryptonites wouldn't kill me. Now I think that I'm "
					+ "wrong, because part of my skin is peeling and I have a terrible gastrointestinal meltdown. I guess I "
					+ "am going to die, slowly and painfully, watching my arms melt into a blob of liquid skin. If anyone reads"
					+ " this, know that it REALLY sucks to get too much radiation into your pod at once. Its...lethal......"
					+ " Oh my god...AAARGH!!! IT BURNS!!!! AAAAAAAGH!!!... Making it ... to the base is... my only...";
		} else if (count == 2) {
			msg1 = "Dang, I wish I'd bought more sonic bombs. They're terrific for breaking up granite"
					+ " and marble near my ship. They're a little hard on my ears, but I stuffed some stale hamburger buns "
					+ "in my ears and now the sound doesn't bother me nearly as much. I'll try using sonic bombs to break up"
					+ " falling  rocks, during the next earthquake. I wonder if that will work...? It seems likely, but air "
					+ "doesn't transmit sound as well as soil does, so perhaps sonic bombs won't be effective during earthquakes."
					+ " If this is my last entry, then you know sonic bombs can't protect a miner from falling rocks. Do me"
					+ " a favor: If you discover my body down here, remove the hamburger buns from my ears before my friends"
					+ " see me like this!....In return, you can have anything you need from my mining pod, the 'Heart of Gold"
					+ "'. Signed, Arthur Dink.";
		} else if (count == 3) {
			msg1 = "I should have listened to the old timers at Mars Surface Base. Sure, they were drunk"
					+ " and expected me to buy their next round of beers, but their advice is priceless. Last night, they said"
					+ " something about explosive gas pockets clustered around lava... the strange part is, some of the old "
					+ "miners said it was too dangerous-- they just avoided magma whenever they could, and others said they "
					+ "used the gas for power. I should have asked how they converted gas to safe fuel. It's too late now..."
					+ " the hull damage from exploding gas has damaged my ship's engine. The surface is too far away for me to"
					+ " climb in a spacesuit. I will probably die down here, with a case of root beer to keep me company. "
					+ "You're welcome to my cargo and any ship parts you can use. Goodness knows, I won't be needing them any"
					+ " more. I'm practicing harp music with clean lyrics, in anticipation of where I'll be living next."
					+ " See you in Valhalla.  Buy me a beer when you get there. Signed, Stanislaw Lem.";
		} else if (count == 4) {
			msg1 = "This is the last will and testament of Zapho Dribblebrix. I leave my name-brand"
					+ " ski-boxing gear and extra arm to anyone foolish enough to use them in Mars' low gravity environment."
					+ " To you, who discover my body, I leave all my mining pod's serviceable equipment, and the case of Pan"
					+ " Galastic Gargle Blasters in the glovebox. To Ford and Trill, I leave my collection of traffic tickets"
					+ " and unpaid bar tabs. They're good for firewood, for toilet paper during hard times, or occasionally "
					+ "for clogging gravity wells around black holes. It's so strange that I have been destroyed by "
					+ "something that seemed like good luck at the time. I found an abandoned mining pod down here, and traded"
					+ " my low-priced hull for the abandoned pod's expensive-looking hull. But...dead miners don't give "
					+ "warrantees on their used parts. The hull collapsed unexpectedly during the last earthquake. Learn "
					+ "from my mistake : most of the junk you find down here is good, but sometimes... sometimes, it's "
					+ "just junk. Junk is unreliable.";
		} else if (count == 5) {
			msg1 = "I should've bought those hull repair kits and drill repair kits. Coming down here, "
					+ "it's always too far to go back every time the drill or the hull are near breaking. It's not so bad if "
					+ "I break the drill, because I can always go back 'upstairs' to fix it at Surface City. Heck, a drill "
					+ "repair there is as cheap as red dirt. I don't mind a broken drill: it's just my ship's way of saying "
					+ "'Let's go home now.' A broken hull, down here, though-- that's a different story. That can kill a man"
					+ " faster than good liquor and bad driving. My hull's almost broken, now... I'll need some luck to get "
					+ "back home. If I make it back to the Surface City, I'll buy every hull repair kit that Mister Goodwrench"
					+ " will sell me. Terry P. Ratchett.";
		}
		panel = new TextPanel(msg1, 170, 130, 65, 15);
	}

	void drawTrans(Graphics g) {
		g.drawImage(inventory, 90, 20, null, this);
		g.setFont(labelfont);
		if (selx < 2) {
			g.setColor(Color.green);
			g.drawString("First", 108, 149);
			g.drawString("Prev", 108, 211);
			g.drawString("Next", 108, 321);
			g.drawString("Last", 108, 381);
		}
		g.setColor(Color.red);
		g.drawString(" Exit", 108, 452);
		g.setColor(new Color(100, 75, 0));
		g.setFont(dfont);
		g.drawImage(ximgs[5], 135 + selx * 174, 425, null, this);
		if (sely == 0)
			g.drawImage(ximgs[3], 73, 68, null, this);
		else if (sely == 1)
			g.drawImage(ximgs[3], 73, 130, null, this);
		else if (sely == 2)
			g.drawImage(ximgs[3], 73, 185, null, this);
		else if (sely == 3)
			g.drawImage(ximgs[3], 73, 240, null, this);
		else if (sely == 4)
			g.drawImage(ximgs[3], 73, 299, null, this);
		else if (sely == 5)
			g.drawImage(ximgs[4], 73, 369, null, this);
		if (iposy == 2995 && selx < 2)
			panel.draw(g);
		if (selx == 0) { // datalog
			if (panel != null)
				panel.draw(g);
		} else if (selx == 1 && (trans == true || (status == true && transc > 0))) {
			panel.draw(g);
			int x1 = 130, y1 = 130, inc = 18, sy = 0;
			int transy1 = transarr[trans_cur];
			if (transy1 == 5) { // 5
				g.drawImage(base, 320, 370 - sy, null, this);
				g.drawString("Base", 390, 430 - sy);
			} else if (transy1 == 12) { // 12
				g.drawImage(imgs[6], 340, 360 - sy, null, this);
				g.drawString("Lead", 365, 375 - sy);
			} else if (transy1 == 70) { // 70
				g.drawImage(imgs[8], 220, 330 - sy, null, this);
				g.drawImage(imgs[9], 470, 330 - sy, null, this);
				g.drawString("Silver", 250, 430 - sy);
				g.drawString("Gold", 500, 430 - sy);
			} else if (transy1 == 100) { // 100
				g.drawImage(imgs[29], 390, 360 - sy, null, this);
				g.drawString("Granite", 385, 430 - sy);
			} else if (transy1 == 150) { // 150
				g.drawImage(imgs[1], 250, 360 - sy, null, this);
				g.drawImage(imgs[2], 500, 360 - sy, null, this);
				g.drawString("Coal", 255, 430 - sy);
				g.drawString("Petroleum", 480, 430 - sy);
			} else if (transy1 == 390) { // 390
				g.drawImage(imgs[30], 390, 360 - sy, null, this);
				g.drawString("Marble", 385, 430 - sy);
			} else if (transy1 == 590) { // 590
				g.drawImage(imgs[31], 225, 360 - sy, null, this);
				g.drawString("Lava", 230, 430 - sy);
				g.drawImage(imgs[20], 300, 335 - sy, null, this);
				g.drawString("Thorium", 310, 430 - sy);
				g.drawImage(imgs[21], 400, 335 - sy, null, this);
				g.drawString("Uranium", 410, 430 - sy);
				g.drawImage(imgs[22], 500, 335 - sy, null, this);
				g.drawString("Plutonium", 510, 430 - sy);
			} else if (transy1 == 1190) { // 1190
				g.drawImage(imgs[magma], 390, 360 - sy, null, this);
				g.drawString("Magma", 380, 430 - sy);
			} else if (transy1 == 2000) { // 2000
				g.drawImage(imgs[50], 390, 360 - sy, null, this);
				g.drawString("Ice9", 400, 430 - sy);
			} else if (transy1 == 20000) { // completed the game - 20000
				if (end == false) {
					end = true;
					labl1x = (int) Math.floor(10 * Math.random());
					cheat = score; // previous score
					bonus = (4320000 - time) * 50;
					if (bonus < 0)
						bonus = 5000000;
					score = score + bonus + money / 2;
					scorestr = makeString(score);
					try { // erasing the file
						File file1 = new File(getJarPath() + inputstr + ".ml");
						PrintStream ps = new PrintStream(new FileOutputStream(file1));
						ps.println("Mission complete! Please, play again.");
						ps.close();
					} catch (IOException exp) {
					}
				}
				int num1 = labl1x;
				g.drawString("Congratulation! You did it! You've saved Mars!", x1, y1);
				y1 += inc;
				g.drawString("Here is the reward: You can enter this cheat:", x1, y1);
				y1 += inc;
				String cht, cht1;
				if (num1 == 0) {
					cht = "filthyrich";
					cht1 = "for 1,000,000$";
				} else if (num1 == 1) {
					cht = "enginefire";
					cht1 = "for a Turbo-X engine";
				} else if (num1 == 2) {
					cht = "tankwars";
					cht1 = "for a Super Fuel Tank";
				} else if (num1 == 3) {
					cht = "bayofpigs";
					cht1 = "for a Gigantic Cargo Bay";
				} else if (num1 == 4) {
					cht = "coolbox";
					cht1 = "for a Liquid Nitrogen Radiator";
				} else if (num1 == 5) {
					cht = "hullrat";
					cht1 = "for an Energy-Shielded Hull";
				} else if (num1 == 6) {
					cht = "leadpoisoning";
					cht1 = "for a Super-Shield BioX";
				} else if (num1 == 7) {
					cht = "toothache";
					cht1 = "for a Nano-Tube Drill";
				} else if (num1 == 8) {
					cht = "batteryacid";
					cht1 = "for a Kryptonite Battery";
				} else {
					cht = "hollandtunnel";
					cht1 = "for a 12,000ft vertical tunnel";
				}
				g.drawString(cht, x1, y1);
				y1 += inc;
				g.drawString(cht1 + ".", x1, y1);
				y1 += 2 * inc;
				g.drawString("All game data is erased.", x1 + 100, y1);
				g.drawString("Game Over.", x1, y1);
				y1 += inc;
				g.drawString("Current Score:", x1, y1);
				g.drawString(makeString(cheat), x1 + 300, y1);
				y1 += inc;
				g.drawString("Money Bonus:", x1, y1);
				g.drawString(makeString(money / 2), x1 + 300, y1);
				y1 += inc;
				g.drawString("Time Bonus:", x1, y1);
				g.drawString(makeString(bonus), x1 + 300, y1);
				y1 += inc;
				g.drawString("Final Score:", x1, y1);
				g.drawString(scorestr, x1 + 300, y1);
				y1 += inc;
				g.drawString("If you want to send your score to the online high-score table,", x1, y1);
				y1 += inc;
				g.drawString("connect to the internet and press Enter.", x1, y1);
				y1 += inc;
			}
		} // end draw trans
		else if (selx == 2) { // inventory
			int x1 = 180, y1 = 150, inc = 14;
			g.setColor(Color.green);
			g.setFont(labelfont);
			g.drawString("Minr", 108, 149);
			g.drawString("Gdgt", 108, 211);
			g.drawString("Upgr", 108, 264);
			g.setColor(new Color(100, 75, 0));
			g.setFont(dfont);
			if (sely == 0) { // minerals
				g.setFont(font20);
				g.drawString("MINERALS", x1, 130);
				g.setFont(dfont);
				g.drawString("Mineral Profit: $" + mineralprofit, 450, 150);
				g.drawString("Mineral", x1, y1);
				g.drawString("Amount", x1 + 100, y1);
				g.drawString("Weight", x1 + 160, y1);
				g.drawLine(x1, y1 + 1, x1 + 200, y1 + 1);
				y1 += inc;
				for (int i = 1; i < 42; i++)
					if (minerals[i] > 0) {
						g.drawString(StatHolder.getName(i), x1, y1);
						g.drawString("" + minerals[i], x1 + 100, y1);
						g.drawString("" + minerals[i] * StatHolder.getWeight(i) + " lbs", x1 + 160, y1);
						y1 += inc;
					}
				if (mith > 0) {
					g.drawString("Mithril", x1, y1);
					g.drawString("" + mith, x1 + 100, y1);
					g.drawString("" + 100 * mith / 150 + " %", x1 + 160, y1);
					y1 += inc;
				}
				if (unob > 0) {
					g.drawString("Unobtainium", x1, y1);
					g.drawString("" + unob, x1 + 100, y1);
					g.drawString("" + unob + " %", x1 + 160, y1);
					y1 += inc;
				}
				if (adam > 0) {
					g.drawString("Adamantium", x1, y1);
					g.drawString("" + adam, x1 + 100, y1);
					g.drawString("" + adam + " %", x1 + 160, y1);
					y1 += inc;
				}
			} // end minerals
			else if (sely == 1) { // gadgets
				x1 = 180;
				y1 = 150;
				g.setFont(font20);
				g.drawString("GADGETS", x1, 130);
				g.setFont(dfont);
				g.drawString("Gadget", x1, y1);
				g.drawString("Amount", x1 + 170, y1);
				g.drawLine(x1, y1 + 1, x1 + 230, y1 + 1);
				y1 += inc;
				g.drawString("Teleport 1", x1, y1);
				g.drawString("" + tel1, x1 + 170, y1);
				y1 += inc;
				g.drawString("Teleport 2", x1, y1);
				g.drawString("" + tel2, x1 + 170, y1);
				y1 += inc;
				g.drawString("Protective Shield", x1, y1);
				g.drawString("" + shield, x1 + 170, y1);
				y1 += inc;
				g.drawString("Drill Repair", x1, y1);
				g.drawString("" + drillfix, x1 + 170, y1);
				y1 += inc;
				g.drawString("Hull Repair", x1, y1);
				g.drawString("" + hullfix, x1 + 170, y1);
				y1 += inc;
				g.drawString("Dynamite", x1, y1);
				g.drawString("" + dyn, x1 + 170, y1);
				y1 += inc;
				g.drawString("TNT", x1, y1);
				g.drawString("" + tnt, x1 + 170, y1);
				y1 += inc;
				g.drawString("Sonic Bomb", x1, y1);
				g.drawString("" + sonb, x1 + 170, y1);
				y1 += inc;
				g.drawString("Ice Bomb", x1, y1);
				g.drawString("" + iceb, x1 + 170, y1);
				y1 += inc;
				g.drawString("Radiation Bomb", x1, y1);
				g.drawString("" + radb, x1 + 170, y1);
				g.drawLine(x1, y1 + 1, x1 + 230, y1 + 1);
				y1 += inc;
				if (coalb == 1) {
					g.drawString("Coal Burner", x1, y1);
					y1 += inc;
				}
				if (petrolr == 1) {
					g.drawString("Petroleum Refinery", x1, y1);
					y1 += inc;
				}
				if (gasb == 1) {
					g.drawString("Natural Gas Burner", x1, y1);
					y1 += inc;
				}
				if (nuc == 1) {
					g.drawString("Nuclear Reactor", x1, y1);
					y1 += inc;
				}
				if (nucx == 1) {
					g.drawString("Nuclear Reactor X", x1, y1);
					y1 += inc;
				}
			} // end gadgets
			else if (sely == 2) { // upgrades
				x1 = 180;
				y1 = 150;
				g.setFont(font20);
				g.drawString("UPGRADES", x1, 130);
				g.setFont(dfont);
				String e_name = StatHolder.getUpgradeName(engine - 1), f_name = StatHolder.getUpgradeName(fueltank + 6),
						c_name = StatHolder.getUpgradeName(cargobay + 13),
						r_name = StatHolder.getUpgradeName(radiator + 20),
						h_name = StatHolder.getUpgradeName(hullx + 27), x_name = StatHolder.getUpgradeName(biox + 34),
						d_name = StatHolder.getUpgradeName(drillx + 41), b_name = StatHolder.getUpgradeName(batx + 48);
				int e_amount = StatHolder.getUpgradeAmount(engine - 1),
						f_amount = StatHolder.getUpgradeAmount(fueltank + 6),
						c_amount = StatHolder.getUpgradeAmount(cargobay + 13),
						r_amount = StatHolder.getUpgradeAmount(radiator + 20),
						h_amount = StatHolder.getUpgradeAmount(hullx + 27),
						x_amount = StatHolder.getUpgradeAmount(biox + 34),
						d_amount = StatHolder.getUpgradeAmount(drillx + 41),
						b_amount = StatHolder.getUpgradeAmount(batx + 48);
				if (engine == 8) {
					e_name = "Mega";
					e_amount = 3000;
				}
				if (fueltank == 8) {
					f_name = "Mega";
					f_amount = 6000;
				}
				if (cargobay == 8) {
					c_name = "Mega";
					c_amount = 15000;
				}
				if (radiator == 8) {
					r_name = "Mega";
					r_amount = 1200;
				}
				if (hullx == 8) {
					h_name = "Mega";
					h_amount = 2000;
				}
				g.drawString("Upgrade", x1, y1);
				g.drawString("Name", x1 + 80, y1);
				g.drawString("Amount", x1 + 210, y1);
				g.drawLine(x1, y1 + 1, x1 + 240, y1 + 1);
				y1 += inc;
				g.drawString("Engine", x1, y1);
				g.drawString(e_name, x1 + 80, y1);
				g.drawString("" + e_amount + " HP", x1 + 210, y1);
				y1 += inc;
				g.drawString("Fuel Tank", x1, y1);
				g.drawString(f_name, x1 + 80, y1);
				g.drawString("" + f_amount + " L", x1 + 210, y1);
				y1 += inc;
				g.drawString("Cargo Bay", x1, y1);
				g.drawString(c_name, x1 + 80, y1);
				g.drawString("" + c_amount + " lbs", x1 + 210, y1);
				y1 += inc;
				g.drawString("Radiator", x1, y1);
				g.drawString(r_name, x1 + 80, y1);
				g.drawString("" + r_amount + " F", x1 + 210, y1);
				y1 += inc;
				g.drawString("Hull", x1, y1);
				g.drawString(h_name, x1 + 80, y1);
				g.drawString("" + h_amount + " Hits", x1 + 210, y1);
				y1 += inc;
				g.drawString("Bio-X", x1, y1);
				g.drawString(x_name, x1 + 80, y1);
				g.drawString("" + x_amount + " Rx", x1 + 210, y1);
				y1 += inc;
				g.drawString("Drill", x1, y1);
				g.drawString(d_name, x1 + 80, y1);
				g.drawString("" + d_amount + " DL", x1 + 210, y1);
				y1 += inc;
				g.drawString("Battery", x1, y1);
				g.drawString(b_name, x1 + 80, y1);
				g.drawString("" + b_amount + " MW", x1 + 210, y1);
				y1 += inc;
				g.drawImage(ximgs[0], 636, 104, null, this); // music
				g.drawImage(ximgs[1], 630, 150, null, this); // sounds
			}
		} // end draw inventory
	} // end drawTrans()

	public static void main(String argv[]) {
		motherload gm = new motherload();
		gm.gameLoop();
	}
}