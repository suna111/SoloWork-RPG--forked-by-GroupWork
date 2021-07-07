package beans;

import java.io.Serializable;

public class Dragon extends Monsters implements Serializable{
	// 属性・フィールド
	private int hp;// 初期値
	private final int MAX_HP=500;

	public Dragon(char suffix) {// コンストラクタ
		this.suffix = suffix;
		this.setHp(500);
	}

	public Dragon() {// コンストラクタ
		this.suffix = 'A';
		this.setHp(500);
	}

	// Monster.getNameのオーバーライド
	public String getName() {
		return "ドラゴン" + this.suffix;
	}

	// 操作・メソッド
	// キャラクターの固有メソッド
		// 攻撃1 炎の息(10のダメージ)
		public void attack(Characters c){// キャラクタークラスを継承しているものすべてに適応
			// 内部処理
			int damage = 10;
			c.setHp(c.getHp() - damage);

			// 出力処理
			String[] comment = {
				this.getName()+ "は炎の息を吐いた！",
				c.getName() + "に10のダメージ！",
				"体がひりひり痛む・・"
			};
            for(String cm : comment) {
				System.out.println(cm);
			}
		}

		// 攻撃2 噛みつき(20のダメージ)
		public void bite(Characters c){
			int damage = 20;
			c.setHp(c.getHp() - damage);

			//出力処理
			String[] comment = {
				this.getName() + "は" + c.getName() + "に噛み付いた！",
				damage + "のダメージを受けた",
				"なんとか致命傷は逃れたようだ・・"
			};
			for(String cm : comment) {
				System.out.println(cm);
			}
		}

	}