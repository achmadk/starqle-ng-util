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
# @file_name src/factories/sh-table-params.coffee
# @author Raymond Ralibi
# @email ralibi@starqle.com
# @company PT. Starqle Indonesia
# @note This file contains ShPersistenceHookNotification for holding tableParams data inspired by ng-table
# =============================================================================

###*
# @ngdoc object
# @name ShPersistenceHookNotification
#
# @description
# ShPersistenceHookNotification factory
#
###

shPersistenceModule.factory(
  'ShPersistenceHookNotification'
  [
    'ShNotification'
    (
      ShNotification
    ) ->

      ShPersistenceHookNotification = (params) ->

        # Variables
        self = this

        self.shPersistence = params.shPersistence


        self.shPersistence.newEntityErrorHooks.push (error) ->
          ShNotification.toastByResponse error
          return

        self.shPersistence.createEntityErrorHooks.push (error) ->
          ShNotification.toastByResponse error
          return

        self.shPersistence.editEntityErrorHooks.push (error) ->
          ShNotification.toastByResponse error
          return

        self.shPersistence.updateEntityErrorHooks.push (error) ->
          ShNotification.toastByResponse error
          return


        #
        # Return this/self
        #
        this

      #
      # Return ShPersistenceHookNotification
      #
      ShPersistenceHookNotification
  ]
)
