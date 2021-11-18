*** Setting ***
Documentation     Checking Login Functionalities
Library           SeleniumLibrary
Resource          Training_resources.robot


*** Test Cases ***

Open Home page
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Browser Shutdown

ValidLogin Admin User
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Navigate To Homepage And Click Sign In as Admin
    Browser Shutdown

ValidLogin Normal User
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Navigate To Homepage And Click Sign In as a Normal User
    Browser Shutdown

Edit and Save Cats Names Normal User
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Navigate To Homepage And Click Sign In as a Normal User
    Edited and Save Cats Name as a Normal User
    Browser Shutdown

Edit and Save Two Cats with Same Name Normal User
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Navigate To Homepage And Click Sign In as a Normal User
    Edited and Save 2 Cats with same Name as a Normal User
    #Browser Shutdown

Edit and Save Cats Names Admin User
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Navigate To Homepage And Click Sign In as Admin
    Edited and Save Cats Name as Admin User
    Browser Shutdown


Delete Cat
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Navigate To Homepage And Click Sign In as Admin
    Delete Cats Admin User
    #Reset Cats Admin User
    #Browser Shutdown

Reset Cat as Admin
    [Tags]       Femi
    Open Supermetrics Kitty Manager home page
    Navigate To Homepage And Click Sign In as Admin
    Reset Cats Admin User
    #Browser Shutdown
