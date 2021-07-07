package beans;

import java.io.Serializable;

public class Slime extends Monsters implements Serializable{
	/* 属性・フィールド */
	private int hp;
	private final int MAX_HP = 10;

	public Slime(char suffix) {// コンストラクタ1
		this.suffix = suffix;
		this.setHp(10);
	}

	public Slime() {
		this.suffix = 'A';
		this.setHp(10);
	}

	// Monster.getNameのオーバーライド
	public String getName() {
		return "スライム" + this.suffix;
	}
	/* 操作・メソッド */
	// キャラクターの固有メソッド
		// 攻撃1 ぷるぷる(3のダメージ)
		public void attack(Characters c){// キャラクタークラスを継承しているものすべてに適応
			// 内部処理
			int damage = 3;
			c.setHp(c.getHp() - damage);
			// 出力処理
			String[] comment = {
				"スライム" + this.suffix + "のぷるぷる攻撃！",
				c.getName() + "に3のダメージ！",
				this.getName() + "はぷるぷる揺れている"
			};
			for(String cm : comment) {
				System.out.println(cm);
			}
		}
		// 攻撃(?)2 丸くなる(何も起こらない)
		public void crouch(){
			//出力処理
			String[] comment = {
				this.getName() + "は丸くなった！",
				"しかし何も起こらなかった・・・"
			};
			for(String cm : comment) {
				System.out.println(cm);
			}
		}


}