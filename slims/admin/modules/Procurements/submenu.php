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

/* Bibliographic module submenu items */
// IP based access limitation

do_checkIP('smc');
do_checkIP('smc-bibliography');



$menu[] = array('Header', __('PROCUREMENT'));

$menu[] = array(__('Procurement Results'), MWB.'Procurements/procurement.php', __('Procurement Results'));
$menu[] = array(__('Selection Process'), MWB.'Procurements/procurement_selection.php', __('Procurement Results'));
$menu[] = array(__('Catalog of Book Procurement'), MWB.'Procurements/procurement_catalog.php', __('Catalog of book Procurement'));
