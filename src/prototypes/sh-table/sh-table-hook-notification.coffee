# =============================================================================
# Copyright (c) 2015 All Right Reserved, http://starqle.com/
#
# This source is subject to the Starqle Permissive License.
# Please see the License.txt file for more information.
# All other rights reserved.
#
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
# KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
# PARTICULAR PURPOSE.
#
# @file_name src/prototypes/sh-table/sh-table-hook-notification.coffee
# @author Raymond Ralibi
# @email ralibi@starqle.com
# @company PT. Starqle Indonesia
# @note This file contains prototype for controlling api request on table-like data.
# =============================================================================

"use strict"

shTableModule.run ['$rootScope', ($rootScope) ->


  ###*
  # @ngdoc factory
  # @name shTableHook
  #
  # @description
  # ShTableRest
  ###
  $rootScope.shTableHookNotification = [
    'ShNotification'
    (
      ShNotification
    ) ->

      self = this


      @getEntitiesErrorHooks.push (error) ->
        ShNotification.toastByResponse error

      @newEntityErrorHooks.push (error) ->
        ShNotification.toastByResponse error

      @createEntityErrorHooks.push (error) ->
        ShNotification.toastByResponse error

      @editEntityErrorHooks.push (error) ->
        ShNotification.toastByResponse error

      @updateEntityErrorHooks.push (error) ->
        ShNotification.toastByResponse error

      @deleteEntityErrorHooks.push (error) ->
        ShNotification.toastByResponse error


  ]


]
