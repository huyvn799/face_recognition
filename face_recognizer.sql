-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 07, 2023 lúc 06:03 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `face_recognizer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Account` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Account`, `Password`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance`
--

CREATE TABLE `attendance` (
  `IdAuttendance` varchar(45) NOT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) DEFAULT NULL,
  `Time_in` time DEFAULT NULL,
  `Time_out` time DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Lesson_id` int(11) DEFAULT NULL,
  `AttendanceStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attendance`
--

INSERT INTO `attendance` (`IdAuttendance`, `Student_id`, `Name`, `Class`, `Time_in`, `Time_out`, `Date`, `Lesson_id`, `AttendanceStatus`) VALUES
('SV1020220232', 1, 'Van Quoc Huy', 'KTPM2019', '10:34:25', NULL, '02/02/2023', 2, 'Đi muộn 4 phút'),
('SV1310120231', 1, 'Van Quoc Huy', 'KTPM2019', '19:58:34', NULL, '31/01/2023', 1, 'Có mặt'),
('SV4070220233', 4, 'Vũ Như Ý', 'CNTT2022', '11:01:41', '11:02:05', '07/02/2023', 3, 'Có mặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `Class` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`Class`, `Name`) VALUES
('CNTT2022', 'CNTT2022'),
('KTPM2019', 'KTPM2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson`
--

CREATE TABLE `lesson` (
  `Lesson_id` int(11) NOT NULL,
  `Time_start` time DEFAULT NULL,
  `Time_end` time DEFAULT NULL,
  `Date` varchar(45) NOT NULL,
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lesson`
--

INSERT INTO `lesson` (`Lesson_id`, `Time_start`, `Time_end`, `Date`, `Teacher_id`, `Subject_id`) VALUES
(1, '20:00:00', '21:00:00', '31/01/2023', 2, 1),
(2, '10:30:00', '12:00:00', '02/02/2023', 2, 1),
(3, '11:00:00', '12:00:00', '07/02/2023', 2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Dep` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Semester` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) NOT NULL,
  `Roll` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhotoSample` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`Student_id`, `Dep`, `course`, `Year`, `Semester`, `Name`, `Class`, `Roll`, `Gender`, `Dob`, `Email`, `Phone`, `Address`, `PhotoSample`) VALUES
(1, 'Công nghệ phần mềm', 'Chính quy', '2022-23', 'Học kì I', 'Van Quoc Huy', 'KTPM2019', '132323656', 'Nam', '09/05/2001', 'huy@gmail.com', '1234567789', 'gia lai', 'Yes'),
(2, 'Công nghệ phần mềm', 'Chính quy', '2022-23', 'Học kì I', 'Do Minh Quan', 'KTPM2019', '12312312', 'Nam', '25/04/2001', 'quan@gmail.com', '6958592', 'binh duong', 'Yes'),
(3, 'Công nghệ phần mềm', 'Chính quy', '2022-23', 'Học kì I', 'Nguyen Ngoc Tuan', 'KTPM2019', '1231231231', 'Nam', '16/01/2001', 'tuan@gmail.com', '656599', 'Bù Đăng - Bình Phước', 'No'),
(4, 'Khoa học và kỹ thuật thông tin', 'Chính quy', '2022-23', 'Học kì II', 'Vũ Như Ý', 'CNTT2022', '32452345', 'Nam', '07/02/2023', 'nhuy@gmail.com', '293485674', 'quảng ngãi', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_has_subject`
--

CREATE TABLE `student_has_subject` (
  `Student_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `student_has_subject`
--

INSERT INTO `student_has_subject` (`Student_id`, `Subject_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(1, 3),
(3, 2),
(3, 3),
(1, 5),
(2, 5),
(4, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `Subject_id` int(11) NOT NULL,
  `Subject_name` varchar(45) NOT NULL,
  `Class` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`Subject_id`, `Subject_name`, `Class`) VALUES
(1, 'Java', 'KTPM2019'),
(2, 'C++', 'KTPM2019'),
(3, 'Toán cao cấp', 'KTPM2019'),
(4, 'Lập trình .Net', 'KTPM2019'),
(5, 'Lập trình Web', 'KTPM2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `SecurityQ` varchar(45) NOT NULL,
  `SecurityA` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`Teacher_id`, `Name`, `Phone`, `Email`, `SecurityQ`, `SecurityA`, `Password`) VALUES
(0, 'Admin', '19001235', '', '', '', ''),
(1, 'Canh Phuong Van', '6958592698', 'canhpv@epu.edu.com', 'Sở thích của bạn', 'Code', '123456'),
(2, 'Dungx', '098889221', 'dung@gmail.com', 'Sở thích của bạn', 'Kiếm tiền', '123'),
(3, 'Lea', '06958592', 'ca@gmail.com', 'Bạn thích ăn gì', 'chiu', '123456'),
(4, 'abc', '0988', 'ssas', 'Bạn thích ăn gì', 'meo', '123'),
(5, 'Nhat', '055565656', 'nhat2@gmail.com', 'Sở thích của bạn', 'code', '123'),
(6, '233', '23', '23', 'Bạn thích ăn gì', 'ko', '123'),
(7, 'nhat minh', '13123', 'da', 'Bạn thích ăn gì', '12', '123'),
(8, 'ád', '123', '123', 'Bạn thích ăn gì', '123', '123'),
(9, '12322', '123', '1231', 'Sở thích của bạn', 'a', '1'),
(10, '123', '123', '123', 'Sở thích của bạn', '123', '123'),
(11, 'minh a', 'd', 'a', 'Sở thích của bạn', 'a', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_has_subject`
--

CREATE TABLE `teacher_has_subject` (
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher_has_subject`
--

INSERT INTO `teacher_has_subject` (`Teacher_id`, `Subject_id`) VALUES
(2, 2),
(2, 1),
(2, 5),
(2, 4),
(1, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Account`);

--
-- Chỉ mục cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`IdAuttendance`),
  ADD KEY `Student_id` (`Student_id`) USING BTREE,
  ADD KEY `Lesson_id` (`Lesson_id`) USING BTREE;

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class`);

--
-- Chỉ mục cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`Lesson_id`),
  ADD KEY `Subject_id` (`Subject_id`) USING BTREE,
  ADD KEY `Teacher_id` (`Teacher_id`) USING BTREE;

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Class` (`Class`);

--
-- Chỉ mục cho bảng `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD KEY `Student_id_2` (`Student_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_id`),
  ADD KEY `Class` (`Class`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_id`);

--
-- Chỉ mục cho bảng `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD KEY `Teacher_id` (`Teacher_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `attendance_ibfk_4` FOREIGN KEY (`Lesson_id`) REFERENCES `lesson` (`Lesson_id`);

--
-- Các ràng buộc cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `lesson_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Các ràng buộc cho bảng `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD CONSTRAINT `student_has_subject_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `student_has_subject_ibfk_4` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`);

--
-- Các ràng buộc cho bảng `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Các ràng buộc cho bảng `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD CONSTRAINT `teacher_has_subject_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `teacher_has_subject_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
