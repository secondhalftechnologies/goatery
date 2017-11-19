import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

/**
 * Generated class for the KycFamilyPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-kyc-financial-and-occupation',
  templateUrl: 'kyc-financial-and-occupation.html',
})
export class KycFinancialAndOccupationPage {

  	financial_and_occupation: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams, 
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) {
		this.financial_and_occupation = formBuilder.group({
			'f6_points' : ['0'],

			'f6_jointfamily' : ['', Validators.required],
			'f6_members' : ['', Validators.required],
			'f6_children' : ['', Validators.required],
			'f6_smartuse' : ['',Validators.required],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad KycPhonePage');

		this.financial_and_occupation.controls['f6_children'].valueChanges.subscribe(() => {this.setValidation();});

	}

	setValidation()
	{
		let controls = this.financial_and_occupation.controls;

		console.log(controls['f6_smartuse'].value);
		if(controls['f6_children'].value > 0)
		{
			controls['f6_smartuse'].enable({ emitEvent: false });
			console.log('ddddf');
		}
		else{

			controls['f6_smartuse'].setValue('', { emitEvent: false });
			controls['f6_smartuse'].disable();

		}

	}

	showMessage(message, style: string, dur?: number){
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

	save(){
		this.submitAttempt = true;
		if (this.financial_and_occupation.valid) {
			console.log(this.financial_and_occupation.value);
		}else{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
