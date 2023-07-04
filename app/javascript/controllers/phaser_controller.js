import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  connect() {
    console.log(this)
    const config = {
    type: Phaser.AUTO,
    width: 360,
    height: 730,
    physics: {
      default: 'arcade',
      arcade: {
        gravity: { y: 10 },
      }
    },
    scene: {
      preload: this.preload,
      create: this.create,
      update: this.update
  }
  };
    const game = new Phaser.Game(config);
    this.element.appendChild(game.canvas);
    game.scene.start();


  }


    preload() {
      //Background image
      this.load.image('background', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688389322/background_lkij73.jpg');

      // level 1
      this.load.image('store 1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395588/store_1_kwsoho.png');
      this.load.image('food 1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395488/bakery_zvmuom.png');
      this.load.image('medical 1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395523/pharmacy_hhfxuv.png');
      this.load.image('income 1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472500/city_hall_o46p0r.png');
      this.load.image('hobbies 1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472565/museum_pnz2x2.png');
      this.load.image('bank 1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688473204/bank_mf8px2.png');
      this.load.image('travel 1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395560/hotel_ttlbwy.png');

      // level 2
      this.load.image('store 2', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395583/shop_2_qajrkd.png');
      this.load.image('food 2', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395561/pizzeria_j6nz4z.png');
      this.load.image('medical 2', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395511/hospital_cf8bep.png');
      this.load.image('income 2', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472519/city_hall_3_sndt8u.png');
      this.load.image('hobbies 2', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472576/theatre_ebnpwc.png');
      this.load.image('bank 2', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688473195/bank_3_plwpx4.png');
      this.load.image('travel 2', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688473295/airport_2_tqxgum.png');

      // level 3
      this.load.image('store 3', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395576/the_mall_pxwotq.png');
      this.load.image('food 3', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395545/pizza_beahc_dvzxxc.png');
      this.load.image('medical 3', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395511/hospital_cf8bep.png');
      this.load.image('income 3', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472504/city_hall_2_doyiod.png');
      this.load.image('hobbies 3', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472508/cinema_ttmqoa.png');
      this.load.image('bank 3', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472627/bank_2_wid8tf.png');
      this.load.image('travel 3', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688472592/airport_t5kzxf.png');
    }

    create() {
      //Background image
      const backgroundImage = this.add.image(180, 365, 'background');
      backgroundImage.setDisplaySize(this.sys.game.config.width, this.sys.game.config.height);

      // level 1
/*       const store1 = this.add.image(225,450, 'store 1');
      store1.setDisplaySize(100, 80);
 */
      const food1 = this.add.image(160,300, 'food 1');
      food1.setDisplaySize(100, 80);

      const medical1 = this.add.image(75,220, 'medical 1');
      medical1.setDisplaySize(100, 80);

/*       const income1 = this.add.image(290,220, 'income 1');
      income1.setDisplaySize(120, 100);
 */
      const hobbies1 = this.add.image(290,550, 'hobbies 1');
      hobbies1.setDisplaySize(100, 80);

      const bank1 = this.add.image(90,550, 'bank 1');
      bank1.setDisplaySize(100, 80);

      // const travel1 = this.add.image(225,65, 'travel 1');
      // travel1.setDisplaySize(100, 80);

      // level 2
      const store2 = this.add.image(225,450, 'store 2');
      store2.setDisplaySize(105, 85);

/*       const food2 = this.add.image(160,300, 'food 2');
      food2.setDisplaySize(105, 85);
 */
/*       const medical2 = this.add.image(75,210, 'medical 2');
      medical2.setDisplaySize(105, 85);
 */
      const income2 = this.add.image(290,210, 'income 2');
      income2.setDisplaySize(125, 105);

/*       const hobbies2 = this.add.image(290,540, 'hobbies 2');
      hobbies2.setDisplaySize(105, 85);
 */
/*       const bank2 = this.add.image(90,550, 'bank 2');
      bank2.setDisplaySize(105, 85);
 */
      const travel2 = this.add.image(225,65, 'travel 2');
      travel2.setDisplaySize(120, 85);

      // level 3
/*       const store3 = this.add.image(225,450, 'store 3');
      store3.setDisplaySize(110, 90);

      const food3 = this.add.image(160,300, 'food 3');
      food3.setDisplaySize(110, 90);

      const medical3 = this.add.image(75,220, 'medical 3');
      medical3.setDisplaySize(110, 90);

      const income3 = this.add.image(290,220, 'income 3');
      income3.setDisplaySize(130, 110);

      const hobbies3 = this.add.image(290,550, 'hobbies 3');
      hobbies3.setDisplaySize(120, 80);

      const bank3 = this.add.image(90,550, 'bank 3');
      bank3.setDisplaySize(110, 90);

      const travel3 = this.add.image(225,65, 'travel 3');
      travel3.setDisplaySize(150, 90);
 */      }



    update() {
    }

}
