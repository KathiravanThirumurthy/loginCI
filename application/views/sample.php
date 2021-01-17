<h1>This is main view</h1>
 <?php
             foreach ($result as $object) {
            echo $object->id . "<br>";
            echo $object->email ."<br>";
            echo $object->usertype ."<br>";
            }
             ?>