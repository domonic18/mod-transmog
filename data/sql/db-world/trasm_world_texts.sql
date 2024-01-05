SET @TEXT_ID := 601083;
DELETE FROM `npc_text` WHERE `ID` IN  (@TEXT_ID,@TEXT_ID+1);
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID, 'Transmogrification allows you to change how your items look like without changing the stats of the items.\r\nItems used in transmogrification are no longer refundable, tradeable and are bound to you.\r\nUpdating a menu updates the view and prices.\r\n\r\nNot everything can be transmogrified with eachother.\r\nRestrictions include but are not limited to:\r\nOnly armor and weapons can be transmogrified\r\nGuns, bows and crossbows can be transmogrified with eachother\r\nFishing poles can not be transmogrified\r\nYou must be able to equip both items used in the process.\r\n\r\nTransmogrifications stay on your items as long as you own them.\r\nIf you try to put the item in guild bank or mail it to someone else, the transmogrification is stripped.\r\n\r\nYou can also remove transmogrifications for free at the transmogrifier.'),
(@TEXT_ID+1, 'You can save your own transmogrification sets.\r\n\r\nTo save, first you must transmogrify your equipped items.\r\nThen when you go to the set management menu and go to save set menu,\r\nall items you have transmogrified are displayed so you see what you are saving.\r\nIf you think the set is fine, you can click to save the set and name it as you wish.\r\n\r\nTo use a set you can click the saved set in the set management menu and then select use set.\r\nIf the set has a transmogrification for an item that is already transmogrified, the old transmogrification is lost.\r\nNote that same transmogrification restrictions apply when trying to use a set as in normal transmogrification.\r\n\r\nTo delete a set you can go to the set\'s menu and select delete set.');

DELETE FROM `npc_text_locale` WHERE `ID` IN  (@TEXT_ID,@TEXT_ID+1);
INSERT INTO `npc_text_locale` (`ID`, `Locale`, `text0_0`) VALUES
(@TEXT_ID, 'zhCN', '幻化允许你改变物品的外观，而不会改变物品的属性。\r\n用于幻化的物品不再可退换、可交易，并且会与你绑定。\r\n更新菜单会更新视图和价格。\r\n\r\n并非所有物品都可以相互幻化。\r\n限制包括但不限于：\r\n只有盔甲和武器可以进行幻化。\r\n枪械、弓和弩可以相互幻化。\r\n钓鱼竿不能进行幻化。\r\n你必须能够装备过程中使用的两个物品。\r\n\r\n只要你拥有这些物品，幻化效果就会一直保留在上面。\r\n如果你尝试将物品放入公会银行或邮寄给其他人，则幻化效果将被取消。\r\n\r\n你也可以在幻化师处免费移除幻化效果。'),
(@TEXT_ID+1, 'zhCN', '你可以保存自己的幻化装备方案。\r\n\r\n要保存，首先必须对已装备的物品进行幻化处理。\r\n然后，当你进入方案管理菜单并进入保存方案菜单时，\r\n所有你已幻化的物品都会显示出来，以便你查看正在保存的内容。\r\n如果你认为该方案没问题，你可以点击保存方案并按你喜欢的名称命名它。\r\n\r\n使用一个方案时，你可以在方案管理菜单中点击已保存的方案，然后选择使用方案。\r\n如果该方案中有一个已经被幻化的物品的幻化效果与另一个不同的幻化效果冲突，旧的幻化效果将会丢失。\r\n请注意，使用方案时，与正常幻化一样，仍然会存在相同的幻化限制。\r\n\r\n要删除一个方案，你可以进入方案的菜单，然后选择删除方案。');

SET @STRING_ENTRY := 11100;
DELETE FROM `acore_string` WHERE `entry` IN  (@STRING_ENTRY+0,@STRING_ENTRY+1,@STRING_ENTRY+2,@STRING_ENTRY+3,@STRING_ENTRY+4,@STRING_ENTRY+5,@STRING_ENTRY+6,@STRING_ENTRY+7,@STRING_ENTRY+8,@STRING_ENTRY+9,@STRING_ENTRY+10, @STRING_ENTRY+11, @STRING_ENTRY+12, @STRING_ENTRY+13, @STRING_ENTRY+14, @STRING_ENTRY+15, @STRING_ENTRY+16);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY+0, '物品幻化成功。'),
(@STRING_ENTRY+1, '该装备栏为空。'),
(@STRING_ENTRY+2, '选择的源物品无效。'),
(@STRING_ENTRY+3, '源物品不存在。'),
(@STRING_ENTRY+4, '目标物品不存在。'),
(@STRING_ENTRY+5, '选择的物品无效。'),
(@STRING_ENTRY+6, '你没有足够的金钱。'),
(@STRING_ENTRY+7, '你没有足够的精华。'),
(@STRING_ENTRY+8, '你所有的幻化效果都已被移除。'),
(@STRING_ENTRY+9, '未找到幻化效果。'),
(@STRING_ENTRY+10, '插入的名称无效。'),
(@STRING_ENTRY+11, '显示幻化的物品，重新登录以更新当前区域。'),
(@STRING_ENTRY+12, '隐藏幻化的物品，重新登录以更新当前区域。'),
(@STRING_ENTRY+13, 'The selected Item is not suitable for transmogrification.'),
(@STRING_ENTRY+14, 'The selected Item cannot be used for transmogrification of the target player.'),
(@STRING_ENTRY+15, 'Performing transmog appearance sync....'),
(@STRING_ENTRY+16, 'Appearance sync complete.');

DELETE FROM `command` WHERE `name` IN ('transmog', 'transmog add', 'transmog sync', 'transmog add set');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('transmog', 0, 'Syntax: .transmog <on/off>\nAllows seeing transmogrified items and the transmogrifier NPC.'),
('transmog add', 1, 'Syntax: .transmog add $player $item\nAdds an item to a player\'s appearance collection.'),
('transmog sync', 0, 'Syntax: .transmog sync\nSyncs transmog addon appearances with the server.'),
('transmog add set', 1, 'Syntax: .transmog add set $player $itemSet\nAdds items of an ItemSet to a player\'s appearance collection.');
