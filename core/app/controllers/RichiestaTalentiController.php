<?php
/**
* li₃: the most RAD framework for PHP (http://li3.me)
*
* Copyright 2016, Union of RAD. All rights reserved. This source
* code is distributed under the terms of the BSD 3-Clause License.
* The full license text can be found in the LICENSE.txt file.
*/

namespace app\controllers;

use app\models\RichiestaTalenti;
/**
* This controller is used for serving static pages by name, which are located in the `/views/pages`
* folder.
*
* A Lithium application's default routing provides for automatically routing and rendering
* static pages using this controller. The default route (`/`) will render the `home` template, as
* specified in the `view()` action.
*
* Additionally, any other static templates in `/views/pages` can be called by name in the URL. For
* example, browsing to `/pages/about` will render `/views/pages/about.html.php`, if it exists.
*
* Templates can be nested within directories as well, which will automatically be accounted for.
* For example, browsing to `/pages/about/company` will render
* `/views/pages/about/company.html.php`.
*/
class RichiestaTalentiController extends \app\controllers\CryptedController {

	public function index(){
		$richieste = RichiestaTalenti::find('all');
		return json_encode($richieste->data());
	}

	public function get($id){
		$richiesta = RichiestaTalenti::find('all', ['conditions' => ['id' => $id]]);
		return json_encode($richiesta->data());
	}

	public function add(){
		$richiesta = RichiestaTalenti::create();

		if($this->request->data && $richiesta->save($this->request->data)) {
			return json_encode($richiesta->data());
		}else{
			//error
		}

		return json_encode(null);
	}

	public function approva($id){}

		public function rifiuta($id){}
		}

		?>
