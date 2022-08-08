<!--naam: Emir Ozdemir-->
<form action="showbooks.php">
    <select name="id">
        <?php
            $user='root';
            $password='';
            $server = '127.0.0.1';
            $database='examenwa2019';
            $pdo=null;

            try {
                $pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                $statement = $pdo->query('SELECT * from author');
                $statement->setFetchMode(PDO::FETCH_ASSOC);
                while ($row = $statement->fetch()) {
                    print('<option value="'.$row['id'].'">'.$row['name'].'</option>');
                }
            } catch (PDOException $ex) {
                print($ex);
            }

        ?>
    </select>
    <input type="submit" value="Submit">
</form>
