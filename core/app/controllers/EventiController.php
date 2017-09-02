<?php
/**
 * li₃: the most RAD framework for PHP (http://li3.me)
 *
 * Copyright 2016, Union of RAD. All rights reserved. This source
 * code is distributed under the terms of the BSD 3-Clause License.
 * The full license text can be found in the LICENSE.txt file.
 */

namespace app\controllers;

use app\models\Eventi;
use app\models\Partecipanti;
use app\models\Feedback;
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
class EventiController extends \app\controllers\CryptedController {

	/*
	* lista di tutti gli eventi
	*/
	public function index(){
		$eventi = Eventi::find('all');
		return json_encode($eventi->data());
	}

	/*
	* funzione per ottenere tutte le informazioni su un Evento
	*/
	public function get($id){
		$evento = Eventi::find('all', [
			'conditions' => ['id' => $id],
			'with'       => ['Partecipanti', 'Partecipanti.Iscritti', 'Partecipanti.AzioniEconomiche']
		]);
		return json_encode($evento->data());
	}

	/*
	* funzione per creare un nuovo evento
	*/
	public function add(){
		$evento = Eventi::create();
		
		if($this->request->data && $evento->save($this->request->data)) {
			$evento_salvato = Eventi::find('all', [
				'conditions' => ['id' => $evento->data('id')],
			]);
			return json_encode($evento_salvato->data());
		}else{
			//error
		}

		return json_encode(null);
	}

	/*
	* funzione per iscrivere un Giocatore ad un evento
	*/
	public function partecipa($id){
		$partecipante = Partecipanti::create();
		$data = $this->request->data;
		$data['id_evento'] = $id;  
		if($partecipante->save($data)) {
			$evento = Eventi::find('all', [
				'conditions' => ['id' => $evento->data('id')],
				'with'       => ['Partecipanti', 'Partecipanti.Iscritti', 'Partecipanti.AzioniEconomiche']
			]);
			return json_encode($evento->data());
		}else{
			//error
		}

		return json_encode(null);
	}

	public function assegnaPP($id){
		Eventi::update([
			'pp' => $this->request->data['pp'],
		],
		[
			'id' => $id 
		]);

		$evento = Eventi::find('all', [
			'conditions' => ['id' => $id],
		]);
		return json_encode($evento->data());
	}
	
}

?>