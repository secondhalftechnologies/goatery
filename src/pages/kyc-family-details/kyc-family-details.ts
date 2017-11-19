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
  selector: 'page-kyc-family-details',
  templateUrl: 'kyc-family-details.html',
})
export class KycFamilyDetailsPage {

  	family: FormGroup;
	submitAttempt: boolean = false;

	constructor(public navCtrl: NavController, 
				public navParams: NavParams, 
				public toastCtrl: ToastController,
				public formBuilder: FormBuilder) {
		this.family = formBuilder.group({
			'f7_points' : ['0'],

			'f7_jointfamily' : ['', Validators.required],
			'f7_members' : ['', Validators.required],
			'f7_children' : ['', Validators.required],
			'f7_smartuse' : ['',Validators.required],
		});
	}

	ionViewDidLoad() {
		console.log('ionViewDidLoad KycPhonePage');

		this.family.controls['f7_children'].valueChanges.subscribe(() => {this.setValidation();});

	}

	setValidation()
	{
		let controls = this.family.controls;

		console.log(controls['f7_smartuse'].value);
		if(controls['f7_children'].value > 0)
		{
			controls['f7_smartuse'].enable({ emitEvent: false });
			console.log('ddddf');
		}
		else{

			controls['f7_smartuse'].setValue('', { emitEvent: false });
			controls['f7_smartuse'].disable();

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
		if (this.family.valid) {
			console.log(this.family.value);
		}else{
			console.log('Validation error');
			this.showMessage("Please fill valid data!", "danger", 100000);
		}
	}

}
