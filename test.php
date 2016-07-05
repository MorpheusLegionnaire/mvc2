<?php




echo 1;






//function workWithTest(Test $t)
//{
//     echo $t->blah;
//}
//
//
//class Test
//{
//     public static $count = 0;
//     public $blah = 234345;
//
//     public static function func()
//     {
//          echo __CLASS__;
//     }
//
//     public function __construct()
//     {
//          self::$count++;
//     }
//
//     public function __clone()
//     {
//          self::$count++;
//     }
//
//     public function __destruct()
//     {
//          self::$count--;
//     }
//}
//
//workWithTest(new Test());








//abstract class Figure
//{
//     abstract public function name();
//}
//
//class Circle extends Figure
//{
//     public function name()
//     {
//          echo 'this is circle <br>';
//     }
//}
//
//class Rectangle extends Figure
//{
//     public function name()
//     {
//          echo 'this is rectange <br>';
//     }
//}
//
//class Triangle extends Figure
//{
//     public function name()
//     {
//          echo 'this is triangle <br>';
//     }
//}
//
//
//$figures = array(
//    new Triangle(),
//    new Rectangle(),
//    new Circle(),
//    new Rectangle(),
//    new Circle(),
//    new Rectangle(),
//    new Circle(),
//    new Triangle(),
//    new Rectangle(),
//    new Circle(),
//    new Rectangle(),
//    new Triangle()
//);
//
//foreach ($figures as $figure) {
//     $figure->name();
//}































//class Employee
//{
//    protected $firstName;
//    public $middleName;
//    public $lastName;
//
//    /**
//     * Employee constructor.
//     * @param $firstName
//     * @param $middleName
//     * @param $lastName
//     */
//    public function __construct($firstName, $middleName, $lastName)
//    {
//        $this->firstName = $firstName;
//        $this->middleName = $middleName;
//        $this->lastName = $lastName;
//    }
//
//    public function __toString()
//    {
//        return $this->lastName . " {$this->firstName[0]}. {$this->middleName[0]}.";
//    }
//
//    public function work()
//    {
//        echo 'i am working';
//    }
//
//}
//
//class Manager extends Employee
//{
//    public $officePlace;
//
//    public function work()
//    {
//        echo 'manager working';
//    }
//}
//
//class Director extends Employee
//{
//    public $auto;
//
//    public function __construct($firstName, $middleName, $lastName)
//    {
//        parent::__construct($firstName, $middleName, $lastName);
//    }
//
//    public function callDriver()
//    {
//        echo "{$this->firstName} calls driver";
//    }
//}
//
//$employee = new Director('Marina','Alexandrovna','Kilichko');
////$employee->firstName = 'Marina';
////$employee->lastName = 'Kilichko';
////$employee->middleName = 'Alexandrovna';
////$employee->officePlace = 'Cabinet 3';
////echo $employee->officePlace;
////$employee->work();
//$employee->callDriver();
//
