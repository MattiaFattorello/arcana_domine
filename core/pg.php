<html>
    <head>
        <title>PG Test</title>
    </head>
    <body>
      <?php

        $secret_key     = 'This is my secret key';
        $secret_iv      = 'This is my secret iv'; //max length 16 char
        $encrypt_method = "AES-256-CBC";

        $role = "Staff_1";
        echo "role = " . $role;
        $user_id = 1;
        echo "user_id = " . $user_id;

        $en_role = base64_encode(openssl_encrypt($role, $encrypt_method, $secret_key, 0, $secret_iv));
        $en_role = base64_encode(openssl_encrypt($user_id, $encrypt_method, $secret_key, 0, $secret_iv));
      ?>

      <script type="text/javascript">
        var role = <?php echo $en_role ?>;
        var user_id = <?php echo $en_user_id ?>;
      </script>

      <h1>READ</h1>
      <form method="GET" action="./app/Pg">
        <br> nome: <input type="text" name="nome" />
        <br> bg: <input type="text" name="background" />
        <br> note_pg: <input type="text" name="note_pg" />
        <br> note_staff: <input type="text" name="note_staff" />
        <br> stato: <input type="number" name="stato" />
        <br> id_utente: <input type="number" name="id_utente" />
        <br> razza: <input type="number" name="razza" />
        <br> religione: <input type="number" name="religione" />
        <br> organizzazione: <input type="number" name="organizzazione" />
        <br> grado: <input type="number" name="grado" />
        <br> nome_giocatore: <input type="text" name="nome_giocatore" />

        <br> talento_1: <input type="number" name="talento_1" />

        <input type="submit">
      </form>

      <h1>INSERT</h1>
      <form method="POST" action="./app/Pg/add">
        <br> id_campagna: <input type="text" name="id_campagna" />
        <br> nome: <input type="text" name="nome" />
        <br> bg: <input type="text" name="background" />
        <br> note_pg: <input type="text" name="note_pg" />
        <br> note_staff: <input type="text" name="note_staff" />
        <br> stato: <input type="number" name="stato" />
        <br> id_utente: <input type="number" name="id_utente" />
        <br> razza: <input type="number" name="razza" />
        <br> religione: <input type="number" name="religione" />
        <br> organizzazione: <input type="number" name="organizzazione" />
        <br> grado: <input type="number" name="grado" />
        <br> nome_giocatore: <input type="text" name="nome_giocatore" />

        <br> talento_1: <input type="number" name="talento_1" />
        <br> talento_2: <input type="number" name="talento_2" />
        <br> talento_3: <input type="number" name="talento_3" />
        <br> talento_4: <input type="number" name="talento_4" />
        <br> talento_5: <input type="number" name="talento_5" />
        <br> talento_6: <input type="number" name="talento_6" />

        <input type="submit">
      </form>

      <h1>MODIFY</h1>
      <h1>DELETE</h1>



<!--
        <form method="POST" action="./app/Pg/add">
            <br> nome: <input type="text" name="nome" />
            <br> bg: <input type="text" name="background" />
            <br> note_pg: <input type="text" name="note_pg" />
            <br> note_staff: <input type="text" name="note_staff" />
            <br> stato: <input type="number" name="stato" />
            <br> id_utente: <input type="number" name="id_utente" />
            <br> razza: <input type="number" name="razza" />
            <br> religione: <input type="number" name="religione" />
            <br> organizzazione: <input type="number" name="organizzazione" />
            <br> grado: <input type="number" name="grado" />
            <br> nome_giocatore: <input type="text" name="nome_giocatore" />

            <br> talento_1: <input type="number" name="talento_1" />

            <input type="submit">
-->
        </form>
    </body>
</html>
