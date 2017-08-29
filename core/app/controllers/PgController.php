<?php
/**
 * li₃: the most RAD framework for PHP (http://li3.me)
 *
 * Copyright 2016, Union of RAD. All rights reserved. This source
 * code is distributed under the terms of the BSD 3-Clause License.
 * The full license text can be found in the LICENSE.txt file.
 */

namespace app\controllers;

use app\models\Pg;
use app\models\TalentiPg;
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
class PgController extends \lithium\action\Controller {

	public function index(){
		$pgs = Pg::find('all');
		return json_encode($pgs->data());
	}

	public function get($id){
		$pg = Pg::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni', ]#'Iscritti'] 
		]);
		return json_encode($pg->data());
	}

	public function add(){
		$pg = Pg::create();
		
		if($this->request->data && $pg->save($this->request->data)) {
			$id = $pg->data('id');
			$i = 1;
			while ($i <= 6){
				if(isset($this->request->data['talento_'.$i])){
					$data = [
						'id_pg' => $id, 
						'id_talento' => $this->request->data['talento_'.$i]
					];

					print_r($data);
					$talento_pg = TalentiPg::create();
					$a = $talento_pg->save($data);
					print_r($a);
				}

				$i++;
			}

			$pg_saved = Pg::find('all', [
				'conditions' => ['id' => $id],
				'with'       => ['TalentiPg.Talenti', 'Razze', 'Religioni', 'Organizzazioni', ]#'Iscritti'] 
			]);
			return json_encode($pg_saved->data());
		}else{
			//error
		}

		return json_encode(null);		
	}
	
	public function update(){

	}

	public function delete(){

	}
}

?>