import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the KycFamilyDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-kyc-family-details',
  templateUrl: 'kyc-family-details.html',
})
export class KycFamilyDetailsPage {

	family: FormGroup;
	submitAttempt: boolean = false;
	ddl_education: Array<any> = [];


	constructor(public navCtrl: NavController, 
				public navParams: NavParams,
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) 
	{
		this.family = formBuilder.group({
			'f2_husband_name' : ['', Validators.required],
			'f2_contact_number' : ['', Validators.required],
			'f2_education_id' : ['', Validators.required],
			'occupation_id' : ['', Validators.required],
			'f2_num_of_days_labor_work' : ['', Validators.required],
			'f2_labor_work_rate' : ['', Validators.required],
			'f2_husband_annual_income' : ['', Validators.required],
			'f2_num_of_earning_members' : ['', Validators.required],
			'f2_annual_income_of_family' : ['', Validators.required],
		});

		
		//Call get methode here
		let data = [
			{ 'name' : '1' , 'value' : 'illiterate' },
			{ 'name' : '2' , 'value' : 'tenth or under' },
			{ 'name' : '3' , 'value' : '12th std' },
			{ 'name' : '4' , 'value' : 'graduation' },
			{ 'name' : '5' , 'value' : 'post graduation' },
		];

		this.ddl_education = data;
	}

	ionViewDidLoad() 
	{
		console.log('ionViewDidLoad KycFamilyDetailsPage');
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
		if (this.family.valid) 
		{
			console.log(this.family.value);
		}
		else
		{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
