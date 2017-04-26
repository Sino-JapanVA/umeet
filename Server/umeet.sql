

INSERT INTO `tab` (`id`, `title`, `description`, `createTime`, `createdAt`, `updatedAt`) VALUES
(1, '城市', '拼搏的地方', '2017-04-26 07:07:04', '2017-04-26 07:07:04', '2017-04-26 07:07:04'),
(2, '大学', '大学', '2017-04-26 07:07:15', '2017-04-26 07:07:15', '2017-04-26 07:07:15'),
(3, '创意', '创造力', '2017-04-26 07:07:35', '2017-04-26 07:07:35', '2017-04-26 07:07:35'),
(4, '技术', '生产力', '2017-04-26 07:07:58', '2017-04-26 07:07:58', '2017-04-26 07:07:58'),
(5, '设计', '设计是一种思维', '2017-04-26 07:08:16', '2017-04-26 07:08:16', '2017-04-26 07:08:16'),
(6, '游戏', 'just gaming', '2017-04-26 07:08:36', '2017-04-26 07:08:36', '2017-04-26 07:08:36'),
(7, '旅行', '旅行的风景，陪伴的人。', '2017-04-26 07:08:54', '2017-04-26 07:08:54', '2017-04-26 07:08:54'),
(8, '文艺', '美', '2017-04-26 07:09:11', '2017-04-26 07:09:11', '2017-04-26 07:09:11'),
(9, '问答', '你问，我答', '2017-04-26 07:09:25', '2017-04-26 07:09:25', '2017-04-26 07:09:25'),
(10, '吐槽', '瞎扯', '2017-04-26 07:09:45', '2017-04-26 07:09:45', '2017-04-26 07:09:45');


INSERT INTO `node` (`id`, `pid`, `title`, `pic`, `description`, `createTime`, `createdAt`, `updatedAt`, `tabId`) VALUES
(1, 0, '城市', NULL, '城市', '2017-04-26 07:29:02', '2017-04-26 07:29:02', '2017-04-26 09:22:35', NULL),
(2, 0, '大学', NULL, '大学', '2017-04-26 07:29:45', '2017-04-26 07:29:45', '2017-04-26 07:29:45', NULL),
(3, 0, '创意', NULL, '创意', '2017-04-26 07:30:13', '2017-04-26 07:30:13', '2017-04-26 07:30:13', NULL),
(4, 0, '技术', NULL, '技术', '2017-04-26 07:30:13', '2017-04-26 07:31:13', '2017-04-26 07:31:13', NULL),
(5, 0, '设计', NULL, '设计', '2017-04-26 00:00:00', '2017-04-26 00:00:00', '2017-04-26 00:00:00', NULL),
(6, 0, '游戏', NULL, '游戏', '2017-04-26 07:31:58', '2017-04-26 07:31:58', '2017-04-26 07:31:58', NULL),
(7, 0, '旅行', NULL, '旅行', '2017-04-26 07:32:04', '2017-04-26 07:32:04', '2017-04-26 07:32:04', NULL),
(8, 0, '文艺', NULL, '文艺', '2017-04-26 07:32:10', '2017-04-26 07:32:10', '2017-04-26 07:32:10', NULL),
(9, 0, '问答', NULL, '问答', '2017-04-26 07:32:21', '2017-04-26 07:32:21', '2017-04-26 07:32:21', NULL),
(10, 0, '吐槽', NULL, '吐槽', '2017-04-26 07:32:30', '2017-04-26 07:32:30', '2017-04-26 07:32:30', NULL),
(11, 1, '杭州', NULL, '杭州', '2017-04-26 07:33:23', '2017-04-26 07:33:23', '2017-04-26 12:18:26', 1),
(12, 1, '北京', NULL, '北京', '2017-04-26 07:33:30', '2017-04-26 07:33:30', '2017-04-26 08:08:57', 1),
(13, 1, '上海', NULL, '上海', '2017-04-26 07:33:36', '2017-04-26 07:33:36', '2017-04-26 09:02:17', 1),
(14, 1, '广州', NULL, '广州', '2017-04-26 07:33:43', '2017-04-26 07:33:43', '2017-04-26 09:02:39', 1),
(15, 1, '深圳', NULL, '深圳', '2017-04-26 07:33:48', '2017-04-26 07:33:48', '2017-04-26 09:02:58', 1),
(16, 2, '哈佛大学', NULL, '哈佛大学', '2017-04-26 07:34:18', '2017-04-26 07:34:18', '2017-04-26 15:16:57', NULL),
(17, 2, '牛津大学', NULL, '牛津大学', '2017-04-26 07:34:27', '2017-04-26 07:34:27', '2017-04-26 15:16:57', NULL),
(18, 3, '分享创造', NULL, '分享创造', '2017-04-26 07:34:37', '2017-04-26 07:34:37', '2017-04-26 07:34:37', NULL),
(19, 3, '奇思妙想', NULL, '奇思妙想', '2017-04-26 07:34:45', '2017-04-26 07:34:45', '2017-04-26 07:34:45', NULL),
(20, 4, '程序员', NULL, '程序员', '2017-04-26 07:34:55', '2017-04-26 07:34:55', '2017-04-26 07:34:55', NULL),
(21, 5, '扁平化', NULL, '扁平化', '2017-04-26 07:37:08', '2017-04-26 07:37:08', '2017-04-26 07:37:08', NULL),
(22, 6, '单机游戏', NULL, '单机游戏', '2017-04-26 07:37:58', '2017-04-26 07:37:58', '2017-04-26 07:37:58', NULL),
(23, 6, '网络游戏', NULL, '网络游戏', '2017-04-26 07:38:04', '2017-04-26 07:38:04', '2017-04-26 07:38:04', NULL),
(24, 6, '手机游戏', NULL, '手机游戏', '2017-04-26 07:38:14', '2017-04-26 07:38:14', '2017-04-26 07:38:14', NULL),
(25, 6, '网页游戏', NULL, '网页游戏', '2017-04-26 07:38:34', '2017-04-26 07:38:34', '2017-04-26 07:38:34', NULL),
(26, 7, '说走就走', NULL, '说走就走', '2017-04-26 07:40:27', '2017-04-26 07:40:27', '2017-04-26 07:40:27', NULL),
(27, 8, '笔墨', NULL, '笔墨', '2017-04-26 07:40:35', '2017-04-26 07:40:35', '2017-04-26 07:40:35', NULL),
(28, 9, '大千世界', NULL, '大千世界', '2017-04-26 07:41:39', '2017-04-26 07:41:39', '2017-04-26 07:41:39', NULL),
(29, 10, '穿帮镜头', NULL, '穿帮镜头', '2017-04-26 07:42:19', '2017-04-26 07:42:19', '2017-04-26 07:42:19', NULL),
(30, 10, '电影花絮', NULL, '电影花絮', '2017-04-26 00:00:00', '2017-04-26 00:00:00', '2017-04-26 00:00:00', NULL),
(31, 23, '英雄联盟', NULL, '英雄联盟', '2017-04-26 07:45:39', '2017-04-26 07:45:39', '2017-04-26 07:45:39', NULL),
(32, 23, '穿越火线', NULL, '穿越火线', '2017-04-26 07:45:46', '2017-04-26 07:45:46', '2017-04-26 07:45:46', NULL),
(33, 24, '王者荣耀', NULL, '王者荣耀', '2017-04-26 07:45:11', '2017-04-26 07:45:11', '2017-04-26 07:45:11', NULL),
(34, 24, '阴阳师', NULL, '阴阳师', '2017-04-26 07:45:17', '2017-04-26 07:45:17', '2017-04-26 07:45:17', NULL),
(35, 25, '炉石传说', NULL, '炉石传说', '2017-04-26 07:49:19', '2017-04-26 07:49:19', '2017-04-26 07:49:19', NULL),
(36, 1, '成都', NULL, '成都', '2017-04-26 11:55:15', '2017-04-26 11:55:15', '2017-04-26 11:55:15', 1);
