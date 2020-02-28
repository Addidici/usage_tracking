--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

           #     #  #######  ######   ###  #######  #######  ######
           ##   ##  #     #  #     #   #      #     #     #  #     #
           # # # #  #     #  #     #   #      #     #     #  #     #
           #  #  #  #     #  #     #   #      #     #     #  ######
           #     #  #     #  #     #   #      #     #     #  #   #
           #     #  #     #  #     #   #      #     #     #  #    #
           #     #  #######  ######   ###     #     #######  #     #
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
                            ODI Load Plan Monitor 

--------------------------------------------------------------------------------
 About
--------------------------------------------------------------------------------
  The "moditor" tool is a simple APEX application to allow easy monitoring of 
  load plan executions in Oracle ODI. It was created specifically for Oracle BI 
  Applications deployments as an internal tool, however has been released due 
  to a number of public requests. On that note, there are no guarantees given, 
  and no liability is accepted for any damage or disruption caused. You use the 
  tool entirely at your own risk.

--------------------------------------------------------------------------------
 Pre-Requisites
--------------------------------------------------------------------------------
  1. Create APEX workspace with a custom parsing schema.
  2. Create APEX user accounts for each user of the application.
  3. If you wish to deploy on an instance other than the ODI server, create a 
     database link to the ODI user/instance on the host instance. Modify 
     create_synonyms.sql and append @{DB_LINK_NAME} to the source table name.

--------------------------------------------------------------------------------
 Installation Instructions
--------------------------------------------------------------------------------
  1. Execute create_grants.sql
  2. Execure create_synonyms.sql
  3. Deploy APEX application into workspace.
  
--------------------------------------------------------------------------------
  Original Development
--------------------------------------------------------------------------------
  John Keymer - (t) - https://twitter.com/keymer_john
                (l) - https://www.linkedin.com/in/john-keymer/
                
--------------------------------------------------------------------------------
  Licence
--------------------------------------------------------------------------------
  The moditor tool is released under the GPL licence. You may change the tool 
  as you wish, however you must include this document with any releases.
  
  The tool is FREE and should remain FREE - you may not charge for its use.
  
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
