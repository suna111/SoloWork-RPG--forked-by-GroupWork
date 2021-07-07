package beans;

import java.io.Serializable;

public class Hero extends Characters implements Serializable{
	private String name; //名前
	private int hp; //HP
	private final int MAX_HP = 300; //最大HP
	private int mp; //MP
	private final int MAX_MP = 50; //最大MP

	// 引数(名前入力)有のコンストラクタ
	public Hero(String name) {
		this.setHp(300);
		this.setMp(50);
		this.setName(name);
	}
	// 引数無のコンストラクタ
	public Hero() {
		this.setHp(300);
		this.setMp(50);
		this.setName("アーサー");
	}

	// 戦う
	public void attack(Monsters m) {
		int damage = 20;
		m.setHp(m.getHp() - damage);

		String [] comment = {
				this.getName() + "は力いっぱい切りつけた！",
				 m.getName() + "に" + damage + "のダメージ！",
				 m.getName() + "はもだえている"
		};

		for (String cm : comment) {
			System.out.println(cm);
		}
	}

	// 回復
	public void aid(Characters c) {
		if (this.getMp() >= 5) {
			int recovery = 20;
			c.setHp(c.getHp() + recovery);
			this.setMp(this.getMp() - 5);

			String [] comment = {
					this.getName() + "は回復呪文を唱えた！",
					c.getName() + "の傷が癒えていく・・",
					c.getName() + "のHPが" + recovery + "回復した！"
			};

			for(String cm : comment) {
				System.out.println(cm);
			}

		} else {
			System.out.println("MPが足りない！");
		}
	}

	//雷斬り
	public void thunder(Monsters m) {
		if(this.getMp() >= 15) {
		int damage = 50;
		m.setHp(m.getHp() - damage);
		this.setMp(this.getMp() - 15);

		String [] comment = {
				this.getName() + "は雷の力を剣に込めた！",
				m.getName() + "に" + damage + "のダメージ！",
				m.getName() + "は電気でびりびり痺れている"
		};

		for(String cm : comment) {
			System.out.println(cm);
		}
		} else {
			System.out.println("MPが足りない！");
		}
	}
}