*** Setting ***
Documentation     Variables and Keywords for Automation practice project
Library           SeleniumLibrary
Library           FakerLibrary


*** Variable ***
${URL}                       http://localhost:3000/login
${BROWSER}                   chrome
${Login_Button}              xpath://*[@id="__next"]/div/nav/div/button[2]
${Password_Button}           xpath://*[@id="__next"]/div/nav/div/button[1]
${Username_Field}            id:username
${Password_Field}            id:password
${Login2_Button}             xpath://*[@id="__next"]/div/div/form/button
${Admin_Username}            admin
${Admin_Password}            adminpass
${Norm_Username}             user
${Norm_Password}             helloworld
${MAXIMUM_WAIT}              10s
${Cat_1}                     xpath://*[@id="__next"]/div/div/div[1]/div[2]/span/div
${SaveButton_1}              id:1
${SaveButton_11}             class:sc-fubCzh
${Cat_2}                     xpath://*[@id="__next"]/div/div/div[2]/div[2]/span/div
${SaveButton_2}              id:2
${SaveButton_22}             //*[@id="__next"]/div/div/div[2]/div[2]/svg[1]
${Cat_3}                     xpath://*[@id="__next"]/div/div/div[3]/div[2]/span/div
${SaveButton_3}              id:3
${Cat_4}                     xpath://*[@id="__next"]/div/div/div[4]/div[2]/span/div
${SaveButton_4}              id:4
${Cat_5}                     xpath://*[@id="__next"]/div/div/div[5]/div[2]/span/div
${SaveButton_5}              id:5
${Cat_6}                     xpath://*[@id="__next"]/div/div/div[6]/div[2]/span/div
${SaveButton_6}              id:6
${DeleteCat_1}               id:7
${DeleteCat_2}               id:8
${DeleteCat_3}               id:9
${DeleteCat_4}               id:10
${DeleteCat_5}               id:11
${DeleteCat_6}               id:12
${ButtonRed_5}               xpath://*[@stroke="red"]
${ResetButton_Admin}         xpath://*[@id="__next"]/div/nav/div/button[1]



*** Keywords ***

Open Supermetrics Kitty Manager home page
    #Open Browser    http://localhost:3000/login  headlesschrome
    Open Browser    http://localhost:3000/login  chrome
    Maximize Browser Window
    Sleep       5
    page should contain element   ${Login_Button}


Browser Shutdown
    close browser

Navigate To Homepage And Click Sign In as Admin
    Sleep          5
    input text     ${Username_Field}       ${Admin_Username}
    input text      ${Password_Field}        ${Admin_Password}
    click element       ${Login2_Button}
    Sleep       10
    page should contain element     ${DeleteCat_1}

Navigate To Homepage And Click Sign In as a Normal User
    Sleep          5
    input text     ${Username_Field}       ${Norm_Username}
    input text      ${Password_Field}        ${Norm_Password}
    click element       ${Login2_Button}
    Sleep       10
    page should contain element     ${SaveButton_1}


Edited and Save Cats Name as a Normal User
    Sleep          3
    input text          ${Cat_1}       CatNojjf1
    Sleep        2
    wait until element is visible   ${SaveButton_1}
    click element       ${SaveButton_1}
    input text          ${Cat_2}       CatNojjf2
    Sleep        2
    wait until element is visible   ${SaveButton_2}
    click element       ${SaveButton_2}
    input text          ${Cat_3}       CatNojjf3
    Sleep        2
    wait until element is visible   ${SaveButton_3}
    click element       ${SaveButton_3}
    input text          ${Cat_4}       CatNojjf4
    Sleep        2
    wait until element is visible   ${SaveButton_4}
    click element       ${SaveButton_4}
    input text          ${Cat_5}       CatNojjf5
    Sleep        2
    wait until element is visible   ${SaveButton_5}
    click element       ${SaveButton_5}
    input text          ${Cat_6}       CatNojjf6
    Sleep        2
    wait until element is visible   ${SaveButton_6}
    click element       ${SaveButton_6}

Edited and Save 2 Cats with same Name as a Normal User
    Sleep          3
    input text          ${Cat_1}       CatNojjf1
    Sleep        2
    #wait until element is visible   ${SaveButton_1}
    click element       ${SaveButton_1}
    input text          ${Cat_4}       CatNojjf1
    Sleep        2
    #wait until element is visible   ${SaveButton_4}
    click element       ${SaveButton_4}
    Sleep     5
    page should contain element   ${ButtonRed_5}

Edited and Save Cats Name as Admin User
    Sleep          3
    input text          ${Cat_1}       CatNojjf1
    Sleep        2
    wait until element is visible   ${SaveButton_1}
    click element       ${SaveButton_1}
    input text          ${Cat_2}       CatNojjf2
    Sleep        2
    wait until element is visible   ${SaveButton_2}
    click element       ${SaveButton_2}
    input text          ${Cat_3}       CatNojjf3
    Sleep        2
    wait until element is visible   ${SaveButton_3}
    click element       ${SaveButton_3}
    input text          ${Cat_4}       CatNojjf4
    Sleep        2
    wait until element is visible   ${SaveButton_4}
    click element       ${SaveButton_4}
    input text          ${Cat_5}       CatNojjf5
    Sleep        2
    wait until element is visible   ${SaveButton_5}
    click element       ${SaveButton_5}
    input text          ${Cat_6}       CatNojjf6
    Sleep         2
    wait until element is visible   ${SaveButton_6}
    click element       ${SaveButton_6}

Delete Cats Admin User
    Sleep                  2
    wait until element is visible      ${DeleteCat_1}
    click element       ${DeleteCat_1}
    sleep                 2
    #wait until element is visible      ${DeleteCat_3}
    #click element       ${DeleteCat_3}

Reset Cats Admin User
    Sleep    5
    #wait until element is visible   ${ResetButton_Admin}
    click element       ${ResetButton_Admin}