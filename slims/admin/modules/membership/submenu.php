<?php
/**
 * Copyright (C) 2007,2008  Arie Nugraha (dicarve@yahoo.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

/* Membership module submenu items */
// IP based access limitation
do_checkIP('smc');
do_checkIP('smc-membership');

$menu[] = array('Header', __('MEMBERSHIP'));
$menu[] = array(__('SKBP'), MWB.'membership/member_skbp.php', __('Surat keterangan bebas pustaka'));
$menu[] = array(__('View Member List'), MWB.'membership/index.php', __('View Library Member List'));
$menu[] = array(__('Add New Member'), MWB.'membership/index.php?action=detail', __('Add New Library Member Data'));
$menu[] = array(__('Member Type'), MWB.'membership/member_type.php', __('View and modify member type'));

$menu[] = array('Header', __('TOOLS'));
$menu[] = array(__('Member Card Printing'), MWB.'membership/member_card_generator.php', __('Print Member Card'));
$menu[] = array(__('Member Data Export'), MWB.'membership/export.php', __('Export Members Data To CSV File'));
$menu[] = array(__('Member Data Import'), MWB.'membership/import.php', __('Import Members Data From CSV File'));
