# Redmine Multicalendar plugin - multiple, customizable calendars
# Copyright (C) 2011  KSF Technologies http://ksfltd.com
# Authors: Anna Yalagina, Eugene Hutorny
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; version 2
# of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA

  match 'calendars/:id/settings' => 'calendar#settings'
  match 'calendars/:id/settings/:tab' => 'calendar#settings'

  match 'calendars/:id/view' => 'calendar_vacation#show'
  match 'calendars/:id/assign_calendar' => 'assign_calendar#new'
  match 'calendars/:id/settings/:tab/:date_year_for_list_holidays' => 'calendar#settings'
  match 'calendars/:id/settings/:tab/:year' => 'calendar#settings'

  match 'issues/calendar' => 'calendars#show'
  match 'calendar' => 'calendar#index'
  match 'calendar/new' => 'calendar#new'
  match 'calendar/create' => 'calendar#create'
  match 'calendar/show' => 'calendar#show'
  match 'calendar/assign' => 'assign_calendar#add_calendar'
  match 'calendar/assign/create' => 'assign_calendar#create'
  match 'calendar/assign/autocomplete' => 'assign_calendar#autocomplete_for_assign_calendar'
  match 'calendar/assign/destroy' => 'assign_calendar#destroy'
  match 'calendar/assign/add' => 'assign_calendar#add_calendar'
  match 'calendar/assign/destroy_cal' => 'assign_calendar#destroy_calendar'
  match 'calendar/destroy' => 'calendar#destroy'
  match 'calendar/update' => 'calendar#update'
  match 'calendar/settings' => 'calendar#settings'
  match 'calendar/edit' => 'calendar#edit'
  match 'calendar/duplicate' => 'calendar#edit'
  match 'calendar/vacation' => 'calendar_vacation#show'
  match 'calendar/vacation/list' => 'calendar_vacation#list_holidays'
  match 'calendar/vacation/create' => 'calendar_vacation#create'
  match 'calendar/vacation/update' => 'calendar_vacation#update'
  match 'calendar/vacation/destroy' => 'calendar_vacation#destroy'
  match 'calendar/vacation/duplicate' => 'calendar_vacation#duplicate'
  match 'calendar/weekly' => 'pattern_weeklies#index'
  match 'calendar/weekly/create' => 'pattern_weeklies#create'
  match 'calendar/weekly/edit' => 'pattern_weeklies#edit'
  match 'calendar/weekly/destroy' => 'pattern_weeklies#destroy'
  match 'calendar/week_days/edit' => 'week_days#edit'
  match 'calendar/week_days/update' => 'week_days#update'