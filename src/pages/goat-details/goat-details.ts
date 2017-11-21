import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the GoatDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-goat-details',
  templateUrl: 'goat-details.html',
})
export class GoatDetailsPage {

	goat_details: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) 
	{
		this.goat_details = formBuilder.group({
			'f7_number_of_goats' : ['', Validators.required],
			'f7_female_goat' : ['', Validators.required],
			'f7_number_of_buck' : ['', Validators.required],
			'f7_number_of_shegoat' : ['', Validators.required],
			'f7_breed_name' : ['', Validators.required],
			'f7_from_where_you_buy_goat' : ['', Validators.required],
			'f7_type_of_goat_shed' : ['', Validators.required],
			'f7_source_of_fodder' : ['', Validators.required],
			'f7_own_fodder_lasts_in_num_of_days' : ['', Validators.required],
			'f7_water_source' : ['', Validators.required],
		});
	}

	ionViewDidLoad() 
	{
		console.log('ionViewDidLoad GoatDetailsPage');
	}

	showMessage(message, style: string, dur?: number)
	{
		const toast = this.toastCtrl.create({
			message: message,
			showCloseButton: true,
			duration: dur || 5000,
			closeButtonText: 'Ok',
			cssClass: style,
			dismissOnPageChange: true
	    });

	    toast.present();
	}

	save()
	{
		this.submitAttempt = true;
		if (this.goat_details.valid) 
		{
			console.log(this.goat_details.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
