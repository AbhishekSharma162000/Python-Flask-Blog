-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 07:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '123456789', 'first post', '2022-01-10 18:45:47'),
(2, 'ABHISHEK SHARMA', 'as9211528981@gmail.com', '0987123704', 'trr', NULL),
(3, 'Abhishek Sharma ', 'abhisheksharmaipu@gmail.com', '9871237042', 'this message is dummy', NULL),
(4, 'Abhishek Sharma ', 'abhisheksharmaipu@gmail.com', '9871237042', 'this message is dummy', '2022-01-10 20:08:51'),
(5, 'ABHISHEK SHARMA', 'as9211528981@gmail.com', '09871237042', 'asghjd', '2022-01-11 21:07:28'),
(6, 'ABHISHEK SHARMA', 'as9211528981@gmail.com', '09871237042', 'asghjd', '2022-01-11 21:13:21'),
(7, 'ABHISHEK SHARMA', 'as9211528981@gmail.com', '09871237042', 'asghjd', '2022-01-11 21:13:54'),
(8, 'ABHISHEK SHARMA', 'as9211528981@gmail.com', '09871237042', 'asghjd', '2022-01-11 21:14:59'),
(9, 'ABHISHEK SHARMA', 'as9211528981@gmail.com', '09871237042', 'asghjd', '2022-01-11 21:15:08'),
(10, 'Mukul', 'mukul@gmail.com', '987654321', 'hii i am mukul', '2022-01-11 21:16:28'),
(11, 'Ashna', 'ash@gmail.com', '9871237041', 'hii you i am ashna ', '2022-01-11 21:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(3, 'Variables', 'learn python variables', 'third-post', 'Python is not “statically typed”. We do not need to declare variables before using them or declare their type. A variable is created the moment we first assign a value to it. A variable is a name given to a memory location. It is the basic unit of storage in a program.\r\n\r\nThe value stored in a variable can be changed during program execution.\r\nA variable is only a name given to a memory location, all the operations done on the variable effects that memory location.\r\nRules for creating variables in Python:\r\nA variable name must start with a letter or the underscore character.\r\nA variable name cannot start with a number.\r\nA variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ ).\r\nVariable names are case-sensitive (name, Name and NAME are three different variables).\r\nThe reserved words(keywords) cannot be used naming the variable.\r\nLet’s see the simple variable creation:', '', '2022-01-16 15:16:55'),
(4, 'Python map() function', 'python function', 'fouth-post', 'map() function returns a map object(which is an iterator) of the results after applying the given function to each item of a given iterable (list, tuple etc.)\r\n\r\nSyntax :\r\n\r\nmap(fun, iter)\r\nParameters :\r\n\r\nfun : It is a function to which map passes each element of given iterable.\r\niter : It is a iterable which is to be mapped.\r\n\r\nNOTE : You can pass one or more iterable to the map() function.', '', '2022-01-16 15:18:07'),
(5, 'Types of inheritance Python', 'Inheritance', 'fifth-post', 'nheritance is defined as the capability of one class to derive or inherit the properties from some other class and use it whenever needed. Inheritance provides the following properties: \r\n \r\n\r\nIt represents real-world relationships well. \r\nIt provides reusability of code. We don’t have to write the same code again and again. Also, it allows us to add more features to a class without modifying it. \r\nIt is transitive in nature, which means that if class B inherits from another class A, then all the subclasses of B would automatically inherit from class A. \r\n \r\nExample:\r\n \r\n\r\n\r\n# A Python program to demonstrate\r\n# inheritance \r\n \r\n \r\n# Base class or Parent class\r\nclass Child:\r\n \r\n    # Constructor\r\n    def __init__(self, name):\r\n        self.name = name\r\n \r\n    # To get name\r\n    def getName(self):\r\n        return self.name\r\n \r\n    # To check if this person is student\r\n    def isStudent(self):\r\n        return False\r\n \r\n# Derived class or Child class\r\nclass Student(Child):\r\n \r\n    # True is returned\r\n    def isStudent(self):\r\n        return True\r\n \r\n  \r\n# Driver code\r\n# An Object of Child\r\nstd = Child(\"Ram\")\r\nprint(std.getName(), std.isStudent())\r\n \r\n# An Object of Student\r\nstd = Student(\"Shivam\")\r\nprint(std.getName(), std.isStudent())\r\nOutput:\r\n \r\n\r\nRam False\r\nShivam True\r\n\r\n', '', '2022-01-16 15:19:14'),
(6, 'Python String', 'Python String', 'sixth-post', 'In Python, Strings are arrays of bytes representing Unicode characters. However, Python does not have a character data type, a single character is simply a string with a length of 1. Square brackets can be used to access elements of the string.\r\n\r\nCreating a String\r\nStrings in Python can be created using single quotes or double quotes or even triple quotes.', '', '2022-01-16 15:20:13'),
(7, 'System & Compiler programming', 'this is new post', 'new-post', 'Developing system programs using C for basic OS\r\ncommands apart from developing programs for lexical analysis, token counts, symbol table\r\ngenerator, memory storage requirement evaluator for identifiers for one or multiple\r\ndeclarative statements.', 'img.png', '2022-01-23 21:52:36'),
(8, 'Code Optimization and Code Generation', 'this is new post', 'new-post', 'Principal sources of optimization, loop\r\noptimization, DAG - Optimization of Basic Blocks, Global Data Flow Analysis – Efficient\r\nData Flow Algorithm. Code Generation: Issues in code generation, Design of a simple Code\r\nGenerator, Register allocation and Assignment, Peephole optimization. ', 'img.png', '2022-01-23 22:03:06'),
(9, 'Intermediate Code', 'this is new post', 'new-post', ' Syntax directed definitions, Evaluation Orders of Syntax directed\r\ndefinitions; Intermediate Languages: Intermediate code generation, Syntax trees,\r\nConstruction of Syntax trees, Three Address Code, Types and Declarations, Translation of\r\nExpressions, Type Checking, Postfix form. Symbol table: Contents of Symbol table, Data\r\nStructures for Symbol table; Runtime Storage Administration. ', 'img.png', '2022-01-23 22:07:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
