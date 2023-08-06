/*
 Navicat Premium Data Transfer

 Source Server         : HIS
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 127.0.0.1:3306
 Source Schema         : moopoint_V1.0

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 22/12/2020 15:22:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for arrangement
-- ----------------------------
DROP TABLE IF EXISTS `arrangement`;
CREATE TABLE `arrangement`  (
  `id` int(11) NOT NULL,
  `time` date NOT NULL,
  `doc_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of arrangement
-- ----------------------------
INSERT INTO `arrangement` VALUES (1, '2020-12-02', 1, 0);
INSERT INTO `arrangement` VALUES (4, '2020-12-14', 1, 1);
INSERT INTO `arrangement` VALUES (5, '2020-12-15', 1, 2);
INSERT INTO `arrangement` VALUES (6, '2020-12-19', 2, 2);
INSERT INTO `arrangement` VALUES (7, '2020-12-21', 2, 2);
INSERT INTO `arrangement` VALUES (8, '2020-12-29', 5, 2);
INSERT INTO `arrangement` VALUES (9, '2020-12-22', 2, 2);
INSERT INTO `arrangement` VALUES (10, '2020-12-25', 2, 2);
INSERT INTO `arrangement` VALUES (11, '2020-12-26', 2, 2);
INSERT INTO `arrangement` VALUES (12, '2020-12-28', 2, 2);

-- ----------------------------
-- Table structure for constant
-- ----------------------------
DROP TABLE IF EXISTS `constant`;
CREATE TABLE `constant`  (
  `constant_id` int(11) NOT NULL,
  `constant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `constant_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `constant_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`constant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of constant
-- ----------------------------
INSERT INTO `constant` VALUES (1, '派', '浮点型', '3.1415926535');

-- ----------------------------
-- Table structure for consume
-- ----------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume`  (
  `id` int(11) NOT NULL,
  `receipt_id` int(11) NULL DEFAULT NULL,
  `record_id` int(11) NOT NULL,
  `cost_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(11, 2) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `execute` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `time` datetime(0) NOT NULL,
  `payment` int(11) NOT NULL,
  `take_med` int(11) NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aim` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hurry` int(11) NULL DEFAULT NULL,
  `prescription` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `consumption` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `frequency` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `results` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consume
-- ----------------------------
INSERT INTO `consume` VALUES (1, 1111111111, 1, '雪见', 11.50, 1, 1, 1, 12, 12, '2020-11-11 09:34:56', 1, 0, '中药', '中成药费', '治疗', NULL, 0, '处方名', '用法', '用量', '频次', '检查检验结果');
INSERT INTO `consume` VALUES (2, 1111111111, 1, '核磁共振检查', 20.00, 7, 1, 7, 1, 0, '2020-11-11 10:58:53', 1, 2, '检查', '检查费用', '是否进水', '头部', 0, '', '用法', '用量', '频次', '正常');
INSERT INTO `consume` VALUES (3, 1111111111, 1, '肠代食管术', 23.00, 4, 1, 7, 1, 0, '2020-11-11 17:34:28', 1, 2, '检验', '检验费用', '是否有毒', '肠胃', 0, '', '用法', '用量', '频次', '结果正常');
INSERT INTO `consume` VALUES (4, 1111111111, 1, '清创(缝合)术(小)', 34.00, 4, 1, 7, 1, 0, '2020-11-11 11:36:10', 1, 2, '处置', '处置费用', '中毒了吗', '肠胃', 1, '', '用法', '用量', '频次', '检查结果正常');
INSERT INTO `consume` VALUES (5, NULL, 1, '血常规', 23.00, 13, 1, 1, 1, 0, '2020-11-11 12:24:00', 1, 2, '检验', '检验费用', 'qwe f', 'qfd ', 0, NULL, NULL, NULL, NULL, 'asdf');
INSERT INTO `consume` VALUES (6, NULL, 1, '输液', 776.00, 14, 1, 1, 1, 0, '2020-11-11 13:31:22', 1, 2, '处置', '处置费用', 'fge', 'dfgew', 1, NULL, NULL, NULL, NULL, '不正常');
INSERT INTO `consume` VALUES (7, 0, 1, '盘尼西林', 12.24, 1, 1, 1, 10, 0, '2020-12-18 14:35:18', 0, 0, '西药', '西药费', NULL, NULL, NULL, '新增处方1', '1', '1', '1', NULL);
INSERT INTO `consume` VALUES (8, NULL, 1, '普通拔罐治疗', 18.00, 10, 1, 1, 1, 0, '2020-12-21 09:24:55', 0, 2, '检查', '检查费用', '拔罐', '后背', 1, NULL, NULL, NULL, NULL, '检查结果不正常');
INSERT INTO `consume` VALUES (9, 0, 6, '布洛芬缓释胶囊', 0.22, 1, 1, 1, 2, 0, '2020-12-21 10:19:49', 0, 0, '西药', '西药费', NULL, NULL, NULL, '模版:水电费', '', '', '', NULL);
INSERT INTO `consume` VALUES (10, 0, 6, '盘尼西林', 12.24, 1, 1, 1, 4, 0, '2020-12-21 10:19:49', 0, 0, '西药', '西药费', NULL, NULL, NULL, '模版:水电费', '111', '111', '111', NULL);
INSERT INTO `consume` VALUES (11, NULL, 6, '胃镜', 34.00, 2, 1, 1, 1, 0, '2020-12-21 15:43:48', 0, 0, '检查', '检查费用', '看看胃', '胃部', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (13, NULL, 6, '支气管镜', 434.00, 1, 1, 1, 1, 0, '2020-12-21 15:43:48', 0, 0, '检查', '检查费用', '测试一下支气管', '支气管', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (14, NULL, 6, '十二指肠镜', 234.00, 2, 1, 1, 1, 0, '2020-12-21 15:54:06', 0, 0, '检查', '检查费用', '十二指肠', '十二指肠', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (15, NULL, 6, '临床血液学检测', 234.00, 13, 1, 1, 1, 0, '2020-12-21 15:56:59', 0, 0, '检验', '检验费用', '都试试', '全身', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (16, NULL, 6, '临床体液学检测', 372.00, 13, 1, 1, 1, 0, '2020-12-21 15:56:59', 0, 0, '检验', '检验费用', '都试试', '全身', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (17, NULL, 6, '临床生物化学检测', 423.00, 13, 1, 1, 1, 0, '2020-12-21 15:56:59', 0, 0, '检验', '检验费用', '都试试', '全身', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (18, NULL, 6, '临床免疫学检测', 286.00, 13, 1, 1, 1, 0, '2020-12-21 15:56:59', 0, 0, '检验', '检验费用', '都试试', '全身', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (19, NULL, 6, '临床微生物学检测', 429.00, 13, 1, 1, 1, 0, '2020-12-21 15:56:59', 0, 0, '检验', '检验费用', '都试试', '全身', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (20, 0, 6, '头孢拉定', 39.00, 1, 1, 1, 4, 0, '2020-12-21 16:15:45', 0, 0, '西药', '西药费', NULL, NULL, NULL, '头孢消炎模板', '111', '111', '111', NULL);
INSERT INTO `consume` VALUES (21, 0, 6, '头孢呋辛', 89.00, 1, 1, 1, 2, 0, '2020-12-21 16:15:45', 0, 0, '西药', '西药费', NULL, NULL, NULL, '头孢消炎模板', '22', '33', '44', NULL);
INSERT INTO `consume` VALUES (22, 0, 6, '丹皮', 29.00, 1, 1, 1, 4, 0, '2020-12-21 16:20:08', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药2', '11', '11', '11', NULL);
INSERT INTO `consume` VALUES (23, 0, 6, '太子参', 293.00, 1, 1, 1, 4, 0, '2020-12-21 16:20:08', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药2', '11', '11', '11', NULL);
INSERT INTO `consume` VALUES (24, 0, 6, '安息香', 58.00, 1, 1, 1, 5, 0, '2020-12-21 16:20:08', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药2', '111', '111', '111', NULL);
INSERT INTO `consume` VALUES (25, 0, 6, '黄芪', 34.00, 1, 1, 1, 4, 0, '2020-12-21 16:20:10', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药', '1', '1', '1', NULL);
INSERT INTO `consume` VALUES (26, 0, 6, '当归', 45.00, 1, 1, 1, 5, 0, '2020-12-21 16:20:10', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药', '1', '1', '1', NULL);
INSERT INTO `consume` VALUES (27, 0, 6, '芦荟', 63.00, 1, 1, 1, 3, 0, '2020-12-21 16:20:10', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药', '1', '11', '11', NULL);
INSERT INTO `consume` VALUES (28, 0, 6, '半夏', 129.00, 1, 1, 1, 4, 0, '2020-12-21 16:20:10', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药', '11', '11', '11', NULL);
INSERT INTO `consume` VALUES (29, 0, 6, '杜仲', 239.00, 1, 1, 1, 4, 0, '2020-12-21 16:20:10', 0, 0, '中药', '中药费', NULL, NULL, NULL, '汤药', '11', '11', '11', NULL);
INSERT INTO `consume` VALUES (30, NULL, 6, '输液', 776.00, 14, 1, 1, 1, 0, '2020-12-21 17:26:44', 0, 0, '处置', '处置费用', '输液', '手', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (31, NULL, 6, '针灸', 465.00, 10, 1, 1, 1, 0, '2020-12-21 17:26:44', 0, 0, '处置', '处置费用', '扎针', '背部', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `consume` VALUES (32, NULL, 6, '汗蒸法', 100.00, 15, 1, 1, 1, 0, '2020-12-21 17:26:44', 0, 0, '处置', '处置费用', '排汗', '全身', 1, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for daily
-- ----------------------------
DROP TABLE IF EXISTS `daily`;
CREATE TABLE `daily`  (
  `daily_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `begin` datetime(0) NOT NULL,
  `end` datetime(0) NOT NULL,
  `number` int(11) NOT NULL,
  `cost` float(11, 2) NOT NULL,
  PRIMARY KEY (`daily_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily
-- ----------------------------
INSERT INTO `daily` VALUES (1, 1, '2020-11-10 11:30:20', '2020-11-11 11:30:20', 3, 123.12);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_func` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '呼吸内科', '内科', '临床', 1);
INSERT INTO `dept` VALUES (2, '消化内科', '内科', '临床', 1);
INSERT INTO `dept` VALUES (3, '心血管内科', '内科', '临床', 1);
INSERT INTO `dept` VALUES (4, '普通外科', '外科', '临床', 1);
INSERT INTO `dept` VALUES (5, '神经外科', '外科', '临床', 1);
INSERT INTO `dept` VALUES (6, '心胸外科', '外科', '临床', 1);
INSERT INTO `dept` VALUES (7, '放射科', '医学影像科', '医技', 1);
INSERT INTO `dept` VALUES (8, '超声科', '医学影像科', '医技', 1);
INSERT INTO `dept` VALUES (9, '药剂科', '护理科', '医辅', 1);
INSERT INTO `dept` VALUES (10, '中医全科', '中医科', '临床', 1);
INSERT INTO `dept` VALUES (11, '挂号收费', '财务科', '医辅', 1);
INSERT INTO `dept` VALUES (12, '人事科', '行政科', '行政', 1);
INSERT INTO `dept` VALUES (13, '化验科', '检验科', '医技', 1);
INSERT INTO `dept` VALUES (14, '处置科', '处置科', '医技', 1);
INSERT INTO `dept` VALUES (15, '中医外科', '外科', '医技', 1);
INSERT INTO `dept` VALUES (16, '儿科', '儿科 ', '临床', 1);
INSERT INTO `dept` VALUES (17, '口腔科', '口腔科', '临床', 1);
INSERT INTO `dept` VALUES (18, '妇产科', '妇产科', '临床', 1);
INSERT INTO `dept` VALUES (19, '免疫科', '免疫科', '临床', 1);
INSERT INTO `dept` VALUES (20, '耳鼻喉科', '耳鼻喉科', '临床', 1);
INSERT INTO `dept` VALUES (21, '皮肤科', '皮肤科', '临床', 1);
INSERT INTO `dept` VALUES (22, '精神科', '精神科', '临床', 1);
INSERT INTO `dept` VALUES (23, '眼科', '眼科', '临床', 1);
INSERT INTO `dept` VALUES (24, '男科', '男科', '临床', 1);
INSERT INTO `dept` VALUES (25, '肝胆外科', '外科', '临床', 1);
INSERT INTO `dept` VALUES (26, '内分泌科', '内分泌科', '临床', 1);
INSERT INTO `dept` VALUES (27, '泌尿外科', '外科', '临床', 1);
INSERT INTO `dept` VALUES (28, '儿童营养保健科', '保健科', '临床', 1);
INSERT INTO `dept` VALUES (29, '肿瘤内科', '内科', '临床', 1);
INSERT INTO `dept` VALUES (30, '肿瘤外科', '外科', '临床', 1);

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `doc_id` int(11) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `user_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schedule` int(11) NULL DEFAULT NULL,
  `reg_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`doc_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, '25d55ad283aa400af464c76d713c07ad', '张一', 1, '门诊医生', '主任医师', 1, NULL, 1);
INSERT INTO `doctor` VALUES (2, '25d55ad283aa400af464c76d713c07ad', '张二', 1, '门诊医生', '住院医师', 1, 1, 1);
INSERT INTO `doctor` VALUES (3, '12345678', '张三', 3, '门诊医生', '副主任医师', 1, 2, 1);
INSERT INTO `doctor` VALUES (4, '25d55ad283aa400af464c76d713c07ad', '张四', 4, '财务管理员', '住院医师', 0, 1, 1);
INSERT INTO `doctor` VALUES (5, '25d55ad283aa400af464c76d713c07ad', '李一', 5, '门诊医生', '副主任医师', 1, 2, 1);
INSERT INTO `doctor` VALUES (6, '25d55ad283aa400af464c76d713c07ad', '李二', 6, '门诊医生', '住院医师', 1, 3, 0);
INSERT INTO `doctor` VALUES (7, '7721b45cc14f36c45b51b88c7212a3a4', '李三', 7, '医技医生', '主任医师', 0, 2, 1);
INSERT INTO `doctor` VALUES (8, 'c4ca4238a0b923820dcc509a6f75849b', '李四', 8, '医技医生', '住院医师', 0, 1, 1);
INSERT INTO `doctor` VALUES (9, 'c4ca4238a0b923820dcc509a6f75849b', '李四', 9, '药房操作员', NULL, 0, 2, 1);
INSERT INTO `doctor` VALUES (10, '25d55ad283aa400af464c76d713c07ad', '王一', 10, '医技医生', '主治医师', 0, 3, 1);
INSERT INTO `doctor` VALUES (11, '12345678', '王二', 10, '门诊医生', '主任医师', 1, 2, 1);
INSERT INTO `doctor` VALUES (12, '25d55ad283aa400af464c76d713c07ad', '王三', 11, '挂号收费员', NULL, 1, 2, 1);
INSERT INTO `doctor` VALUES (13, '550e1bafe077ff0b0b67f4e32f29d751', '王五', 11, '财务管理员', NULL, 0, NULL, 1);
INSERT INTO `doctor` VALUES (14, 'c4ca4238a0b923820dcc509a6f75849b', '赵四', 12, '医院管理员', NULL, 0, NULL, 1);
INSERT INTO `doctor` VALUES (15, '25d55ad283aa400af464c76d713c07ad', '孙一', 12, '医院管理员', '', 0, NULL, 1);
INSERT INTO `doctor` VALUES (19, 'c4ca4238a0b923820dcc509a6f75849b', '张三', 15, '医技医生', '', 0, 1, 1);
INSERT INTO `doctor` VALUES (20, '25d55ad283aa400af464c76d713c07ad', '编辑后的用户', 16, '财务管理员', '', 0, NULL, 1);
INSERT INTO `doctor` VALUES (21, '25d55ad283aa400af464c76d713c07ad', 'aa', 4, '护工', '', 0, NULL, 1);

-- ----------------------------
-- Table structure for feesubject
-- ----------------------------
DROP TABLE IF EXISTS `feesubject`;
CREATE TABLE `feesubject`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`subject`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feesubject
-- ----------------------------
INSERT INTO `feesubject` VALUES ('ZCYF', '中草药费');
INSERT INTO `feesubject` VALUES ('ZYF', '中药费');
INSERT INTO `feesubject` VALUES ('XYF', '西药费');
INSERT INTO `feesubject` VALUES ('ZLF', '诊疗费');

-- ----------------------------
-- Table structure for ill
-- ----------------------------
DROP TABLE IF EXISTS `ill`;
CREATE TABLE `ill`  (
  `ill_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ill_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ICD_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ill_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `ill_kind` int(11) NOT NULL,
  PRIMARY KEY (`ICD_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ill
-- ----------------------------
INSERT INTO `ill` VALUES ('HL', '霍乱', 'A00', '传染病', 1, 1);
INSERT INTO `ill` VALUES ('GDXHL', '古典型霍乱', 'A00.051', '传染病', 1, 1);
INSERT INTO `ill` VALUES ('ZXHL', '中型霍乱', 'A00.052', '传染病', 1, 1);
INSERT INTO `ill` VALUES ('ARTHL', '埃尔托霍乱', 'A00.152', '传染病', 1, 1);
INSERT INTO `ill` VALUES ('SHFMY', '伤寒腹膜炎', 'A01.003+', '伤寒', 1, 0);
INSERT INTO `ill` VALUES ('SHFY', '伤寒肺炎', 'A01.051+', '肺炎', 1, 1);
INSERT INTO `ill` VALUES ('CCXXSH', '肠出血性伤寒', 'A01.054', '伤寒', 1, 1);
INSERT INTO `ill` VALUES ('SMSJXCY', '沙门氏菌性肠炎', 'A02.004', '肠炎', 1, 1);
INSERT INTO `ill` VALUES ('SY', '沙眼', 'A990', '眼病', 1, 1);
INSERT INTO `ill` VALUES ('NMB', '奶麻病', 'BES020', '皮肤病', 1, 0);
INSERT INTO `ill` VALUES ('DSB', '丹痧病', 'BES040', '痧病', 1, 0);
INSERT INTO `ill` VALUES ('DKB', '顿咳病', 'BES060', '肺病', 1, 0);
INSERT INTO `ill` VALUES ('RJWB', '软脚瘟病', 'BES070', '瘟病', 1, 0);
INSERT INTO `ill` VALUES ('XEYDLB', '小儿疫毒痢病', 'BES080', '痢病', 1, 0);
INSERT INTO `ill` VALUES ('ZXB', '疰夏病', 'BES090', '热病', 1, 0);
INSERT INTO `ill` VALUES ('XJRB', '夏季热病', 'BES100', '热病', 1, 0);
INSERT INTO `ill` VALUES ('THB', '胎黄病', 'BEX010', '皮肤病', 1, 0);
INSERT INTO `ill` VALUES ('CYDB', '赤游丹病', 'BEX020', '皮肤病', 1, 0);
INSERT INTO `ill` VALUES ('QFB', '脐风病', 'BEX060', '中医疾病', 1, 0);
INSERT INTO `ill` VALUES ('BCB', '暴喘病', 'BNF051', '肺系病类', 1, 0);
INSERT INTO `ill` VALUES ('BXB', '暴泻病', 'BNP111', '脾系病类', 1, 0);
INSERT INTO `ill` VALUES ('BLB', '暴聋病', 'BRE070', '耳病类', 1, 0);
INSERT INTO `ill` VALUES ('WY', '瘟疫', 'F444', '传染病', 1, 0);
INSERT INTO `ill` VALUES ('XJXSWZD', '细菌性食物中毒', 'L2-1A0', '食物中毒', 1, 1);
INSERT INTO `ill` VALUES ('BDXCDGR', '病毒性肠道感染', 'L2-1A2', '肠道感染', 1, 1);
INSERT INTO `ill` VALUES ('CDYCGR', '肠道原虫感染', 'L2-1A3', '肠道感染', 1, 1);
INSERT INTO `ill` VALUES ('MD', '梅毒', 'L2-1A6', '传染病', 1, 1);
INSERT INTO `ill` VALUES ('JHB', '结核病', 'L2-1B1', '传染病', 1, 1);
INSERT INTO `ill` VALUES ('JXFSR', '急性风湿热', 'L2-1B4', '风湿', 1, 1);

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine`  (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `standard` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dosage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cost` float(11, 2) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicine
-- ----------------------------
INSERT INTO `medicine` VALUES (0, '当归', 'DG', '100g', '汤药', 'g', 45.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (1, '麻黄', 'MH', '100g', '中草药', 'g', 34.00, '中药', '中药费', 10, 1);
INSERT INTO `medicine` VALUES (2, '紫苏', 'ZS', '100g', '中草药', 'g', 39.00, '中药', '中药费', 10, 1);
INSERT INTO `medicine` VALUES (1245, '盘尼西林', 'PNXL', '三片/盒', '胶囊剂', '颗粒', 12.24, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (1374, '布洛芬缓释胶囊', 'BLFHSJN', '0.3g*24粒/盒', '胶囊剂', '粒', 0.22, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (2835, '雪见', 'XJ', '20g', '中草药', 'g', 39.00, '中药', '中药费', 10, 1);
INSERT INTO `medicine` VALUES (3922, '复方青黛片', 'FFQDP', '20片/盒', '中成药', '片', 60.00, '中药', '中药费', 10, 1);
INSERT INTO `medicine` VALUES (5932, '黄芪', 'HQ', '10g', '中草药', 'g', 34.00, '中药', '中药费', 10, 1);
INSERT INTO `medicine` VALUES (5933, '安息香', 'AXX', '100g', '中草药', 'g', 58.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5934, '艾叶', 'AY', '100g', '中草药', 'g', 34.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5935, '太子参', 'TZS', '100g', '中草药', 'g', 293.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5936, '杜仲', 'DZ', '100g', '中草药', 'g', 239.00, '中药', '中药费', 0, 0);
INSERT INTO `medicine` VALUES (5937, '丹皮', 'DP', '100g', '中草药', 'g', 29.00, '中药', '中药费', 0, 0);
INSERT INTO `medicine` VALUES (5938, '半夏', 'bx', '100g', '中草药', 'g', 129.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5939, '冰片', 'BP', '100g', '中草药', 'g', 292.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5940, '地肤子', 'DFZ', '100g', '中草药', 'g', 293.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5941, '丁香', 'DX', '100g', '中草药', 'g', 332.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5942, '陈皮', 'CP', '100g', '中草药', 'g', 50.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5943, '灯心草', 'DXC', '100g', '中草药', 'g', 32.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5944, '川椒', 'CJ', '100g', '中草药', 'g', 29.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5945, '赤芍', 'CS', '100g', '中草药', 'g', 290.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5946, '沉香', 'CX', '100g', '中草药', 'g', 294.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5947, '百合', 'BH', '100g', '中草药', 'g', 45.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5948, '白芷', 'BZ', '100g', '中草药', 'g', 53.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5949, '芦荟', 'LH', '100g', '中草药', 'g', 63.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5950, '二益丸', 'EYW', '100g', '中成药', 'g', 74.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5951, '结石通片', 'JSTP', '100g', '中成药', 'g', 98.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5952, '五淋丸', 'WLW', '100g', '中成药', 'g', 89.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5953, '清热银花糖浆', 'QRYHTJ', '100g', '中成药', 'g', 74.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5954, '肾炎解热片', 'SYJRP', '100g', '中成药', 'g', 89.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5955, '胆石清片', 'DSQP', '100g', '中成药', 'g', 50.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5956, '玉屏风口服液', 'YPFKFY', '100g', '中成药', 'g', 294.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5957, '消炎利胆片', 'XYLDP', '100g', '中成药', 'g', 92.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5958, '乌军治胆片', 'WJZDP', '100g', '中成药', 'g', 71.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5959, '六味地黄丸', 'LWDHW', '100g', '中成药', 'g', 89.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5960, '祛暑丸', 'QSW', '100g', '中成药', 'g', 38.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5961, '桑菊银翘散', 'SJYQS', '100g', '中成药', 'g', 89.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5962, '清火枳麦片', 'QHZMP', '100g', '中成药', 'g', 19.00, '中药', '中药费', 0, 1);
INSERT INTO `medicine` VALUES (5963, '诺氟沙星', 'NFSX', '100g', '片', '颗粒', 29.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5964, '头孢克洛', 'TBKL', '100g', '片', '颗粒', 90.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5965, '头孢氨苄', 'TBAB', '100g', '片', '颗粒', 290.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5966, '头孢唑啉钠', 'TBZLN', '100g', '片', '颗粒', 43.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5967, '头孢拉定', 'TBLD', '100g', '片', '颗粒', 39.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5968, '头孢呋辛', 'TBFX', '100g', '片', '颗粒', 89.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5969, '头孢曲松钠', 'tbqsn', '100g', '片', '颗粒', 92.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5970, '吉他霉素', 'JTMS', '100g', '片', '颗粒', 23.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5971, '克拉霉素', 'KLMS', '100g', '片', '颗粒', 46.00, '西药', '西药费', 0, 0);
INSERT INTO `medicine` VALUES (5972, '林可霉素', 'LKMS', '100g', '片', '颗粒', 83.00, '西药', '西药费', 0, 0);
INSERT INTO `medicine` VALUES (5973, '麦迪霉素', 'MDMS', '100g', '片', '颗粒', 64.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5974, '交沙霉素', 'JSMS', '100g', '片', '颗粒', 62.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5975, '吲哚美辛', 'ydmx', '100g', '片', '颗粒', 74.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5976, '埃斯林', 'als', '100g', '片', '颗粒', 83.00, '西药', '西药费', 0, 1);
INSERT INTO `medicine` VALUES (5977, '正痛片', 'ZTP', '100g', '片', '颗粒', 83.00, '西药', '西药费', 0, 1);

-- ----------------------------
-- Table structure for medrecord
-- ----------------------------
DROP TABLE IF EXISTS `medrecord`;
CREATE TABLE `medrecord`  (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `complaint` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cur_ill` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cur_treatment` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `past_ill` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `allergy` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phy_exam` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `ICD_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `suggest` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attention` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc_id` int(11) NOT NULL,
  `results` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `register_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medrecord
-- ----------------------------
INSERT INTO `medrecord` VALUES (1, 1, '主诉', '阿萨', '深度', '地方', '发给', '规划', 1, 'A00', '2020-12-20 13:04:54', '减肥', '不要出门', 1, '', 1);
INSERT INTO `medrecord` VALUES (4, 6, 'q', 'q', 'q', 'q', 'q', 'q', 0, 'BES090', '2020-12-16 00:00:00', '1', '1', 1, NULL, 5);
INSERT INTO `medrecord` VALUES (5, 6, 'q', 'q', 'q', 'q', 'q', 'q', 0, 'BEX010', '2020-12-14 00:00:00', '1', '1', 1, NULL, 5);

-- ----------------------------
-- Table structure for nondrug
-- ----------------------------
DROP TABLE IF EXISTS `nondrug`;
CREATE TABLE `nondrug`  (
  `id` int(11) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(11, 2) NOT NULL,
  `standard` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nondrug
-- ----------------------------
INSERT INTO `nondrug` VALUES (1, 'PBCC0101', '普通拔罐治疗', 18.00, '次', 10, '诊疗费', 0, 1);
INSERT INTO `nondrug` VALUES (2, 'HPC86307', '肠代食管术', 3194.00, '次', 4, '诊疗费', 1, 1);
INSERT INTO `nondrug` VALUES (3, 'ABEA0001', '清创(缝合)术(小)', 33.00, '次', 14, '诊疗费', 0, 1);
INSERT INTO `nondrug` VALUES (4, 'AHS2234', '核磁共振检查', 22.00, '次', 7, '诊疗费', 0, 1);
INSERT INTO `nondrug` VALUES (5, 'SDG', '血常规', 23.00, '次', 13, '诊疗费', 1, 1);
INSERT INTO `nondrug` VALUES (6, 'WERTV', '输液', 776.00, '次', 14, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (7, 'ZJ', '针灸', 465.00, '次', 10, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (8, 'HZF', '汗蒸法', 100.00, '次', 15, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (9, 'DMAYS', '动脉造影术', 23.00, '次', 8, '诊疗费', 0, 1);
INSERT INTO `nondrug` VALUES (10, 'XMCCS', '胸膜穿刺术', 45.00, '次', 7, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (11, 'WJ', '胃镜', 34.00, '次', 2, '诊疗费', 0, 1);
INSERT INTO `nondrug` VALUES (12, 'XYTX', '血液透析', 888.00, '次', 3, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (13, 'JXXJGSJMRSZL', '急性心肌梗死静脉溶栓治疗', 444.00, '次', 3, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (14, 'RGYZZZL', '人工牙种植治疗', 555.00, '次', 17, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (15, 'QKYCXF', '全口义齿修复', 39.00, '次', 17, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (16, 'TWSS', '体外碎石', 345.00, '次', 14, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (17, 'LSXZQBQZRS', '临时心脏起搏器植入术', 2394.00, '次', 6, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (18, 'NXSYZY', '逆行肾盂造影', 393.00, '次', 2, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (19, 'ZQGJ', '支气管镜', 434.00, '次', 1, '诊疗费', 0, 1);
INSERT INTO `nondrug` VALUES (20, 'SEZCJ', '十二指肠镜', 234.00, '次', 2, '诊疗费', 0, 1);
INSERT INTO `nondrug` VALUES (21, 'TN', '中医推拿', 89.00, '次', 15, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (22, 'LSSF', '理伤手法', 29.00, '次', 15, '诊疗费', 2, 1);
INSERT INTO `nondrug` VALUES (23, 'LCXUXJC', '临床血液学检测', 234.00, '次', 13, '诊疗费', 1, 1);
INSERT INTO `nondrug` VALUES (24, 'XSYZXJC', '血栓与止血检测', 213.00, '次', 13, '诊疗费', 1, 1);
INSERT INTO `nondrug` VALUES (25, 'LCTYXJC', '临床体液学检测', 372.00, '次', 13, '诊疗费', 1, 1);
INSERT INTO `nondrug` VALUES (26, 'LCSWHXJC', '临床生物化学检测', 423.00, '次', 13, '诊疗费', 1, 1);
INSERT INTO `nondrug` VALUES (27, 'LCMYXJC', '临床免疫学检测', 286.00, '次', 13, '诊疗费', 1, 1);
INSERT INTO `nondrug` VALUES (28, 'LCWSWXJC', '临床微生物学检测', 429.00, '次', 13, '诊疗费', 1, 1);

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `set_category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `reg_level` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rec_book` int(11) NOT NULL,
  `booktime` date NOT NULL,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recepit_id` int(11) NOT NULL,
  `precise_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES (1, 1, '张三', '男', 22, '1998-02-02', '现金支付', '12345619980202111x', '', 1, 1, '普通号', 20, '挂号费', 1, '2020-11-11', '已就诊', '上午', 1111111111, '2020-11-11 09:00:00');
INSERT INTO `patient` VALUES (2, 4, 'mark', '男', 56, '2020-06-01', '现金支付', '150404200020020020', '阿迪斯', 1, 1, '普通号', 47, '挂号费', 1, '2020-11-11', '未看诊', '下午', 1111111111, '2020-11-11 13:00:00');
INSERT INTO `patient` VALUES (3, 3, '333', '女', 43, '2020-11-04', '现金支付', '388388388383838838', '奥斯陆扩大', 1, 1, '普通号', 23, '挂号费', 1, '2020-10-26', '已就诊', '下午', 1111111111, '2020-10-26 15:00:00');
INSERT INTO `patient` VALUES (4, 5, '张三', '女', 34, '2020-11-03', '现金支付', '222888333949950987', '阿斯顿', 1, 1, '普通号', 45, '挂号费', 1, '2020-11-13', '已就诊', '下午', 1111111111, '2020-11-13 14:00:00');
INSERT INTO `patient` VALUES (5, 6, '梁志超', '男', 18, '2002-07-11', '微信支付', '111999333847758493', 'M78星云', 1, 1, '专家号', 56, '挂号费', 1, '2020-12-21', '就诊中', '下午', 1111111111, '2020-12-21 11:44:16');

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt`  (
  `receipt_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  `cost` float(11, 2) NOT NULL,
  `project` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `record_id` int(11) NOT NULL,
  PRIMARY KEY (`receipt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of receipt
-- ----------------------------
INSERT INTO `receipt` VALUES (1111111111, '张三', '2020-11-11 11:30:20', 100.00, '挂号', 'a', '打印成功', 1);
INSERT INTO `receipt` VALUES (1111111112, '张三', '2020-12-14 11:59:07', 101.00, '挂号', '张三于2020-12-14 11:59:7挂号', '打印成功', 1);
INSERT INTO `receipt` VALUES (1111111113, 'mark', '2020-12-14 14:26:49', 21.00, '挂号', 'mark于2020-12-14 14:26:49挂号', '打印成功', 4);

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register`  (
  `reg_id` int(11) NOT NULL,
  `reg_level` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reg_limit` int(11) NOT NULL,
  `reg_cost` int(11) NOT NULL,
  `reg_order` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`reg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES (1, '普通号', 40, 20, 3, '挂号费', 1);
INSERT INTO `register` VALUES (2, '专家号', 10, 100, 2, '挂号费', 1);
INSERT INTO `register` VALUES (3, '急症号', 10, 80, 1, '挂号费', 1);

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule`  (
  `id` int(11) NOT NULL,
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doc_id` int(11) NOT NULL,
  `arr_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES (1, 'q1', 1, '11111100000011');
INSERT INTO `rule` VALUES (2, 'q1', 2, '11110000111100');
INSERT INTO `rule` VALUES (3, 'q1', 3, '00001111000000');
INSERT INTO `rule` VALUES (4, 'q2', 1, '11110000000000');
INSERT INTO `rule` VALUES (5, 'q1', 14, '10000001000001');

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  `userange` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doc_id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `med_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `consumption` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `frequency` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES (14, '扁桃体炎症', '2020-12-01 14:29:14', '个人', 1, '0', '输液', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (31, '头疼', '2020-10-26 15:20:08', '全院', 1, '1', '盘尼西林', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (35, '头疼', '2020-10-26 15:20:08', '全院', 1, '1', '布洛芬缓释胶囊', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (40, '白血病', '2020-12-01 14:12:18', '个人', 1, '0', '普通拔罐治疗', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (41, '白血病', '2020-12-01 14:12:18', '个人', 1, '0', '肠代食管术', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (86, '白血病', '2020-12-01 14:12:18', '个人', 1, '0', '输液', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (87, '肠胃检查', '2020-12-21 15:55:53', '个人', 1, '0', '胃镜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (88, '肠胃检查', '2020-12-21 15:55:53', '个人', 1, '0', '支气管镜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (89, '肠胃检查', '2020-12-21 15:55:53', '个人', 1, '0', '十二指肠镜', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (90, '全部临床检测项目', '2020-12-21 15:57:18', '个人', 1, '0', '临床血液学检测', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (91, '全部临床检测项目', '2020-12-21 15:57:18', '个人', 1, '0', '临床体液学检测', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (92, '全部临床检测项目', '2020-12-21 15:57:18', '个人', 1, '0', '临床生物化学检测', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (93, '全部临床检测项目', '2020-12-21 15:57:18', '个人', 1, '0', '临床免疫学检测', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (94, '全部临床检测项目', '2020-12-21 15:57:18', '个人', 1, '0', '临床微生物学检测', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (95, '排毒养颜', '2020-12-21 17:27:24', '个人', 1, '0', '输液', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (96, '排毒养颜', '2020-12-21 17:27:24', '个人', 1, '0', '针灸', NULL, NULL, NULL, NULL, 1);
INSERT INTO `template` VALUES (97, '排毒养颜', '2020-12-21 17:27:24', '个人', 1, '0', '汗蒸法', NULL, NULL, NULL, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
