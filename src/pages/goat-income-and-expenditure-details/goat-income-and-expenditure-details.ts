import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the GoatIncomeAndExpenditureDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-goat-income-and-expenditure-details',
  templateUrl: 'goat-income-and-expenditure-details.html',
})
export class GoatIncomeAndExpenditureDetailsPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad GoatIncomeAndExpenditureDetailsPage');
  }

}
