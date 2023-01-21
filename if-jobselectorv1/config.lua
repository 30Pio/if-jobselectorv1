-- For Support : https://discord.gg/if-developments
-- Please Add your suggests from Discord

Config = {}

Config.ESX = false --When you using ESX than put this to true, and Qbcore to false

Config.QBCore = true --When you using Qbcore than put this to true, and ESX to false

Config.Location = {
    {
        coords = vector3(-265.0, -963.6, 30.2), -- Coords to Interact
        blipname = "Job Selector", -- Blip Name
        blipsprite = 407, -- What Blip? https://docs.fivem.net/docs/game-references/blips/
        blipcolor = 27, -- Blip Color
        blipscale = 0.75, -- Blip Size
        blipdisplay = 4, -- Blip Display
    }
}

Config.JobsList = {
    {
       title = "Taxi",
       img = "taxi2.png",
       lvl = "2 LVL", 
       time = "1h",
       players = "2 Players",
       jobdescription = "Take this job and go to locations , you can take taxi vehicle and help other player.",
       titleimg1 = "taxi-exp.png",
       titleimg2 = "taxi-exp2.png",
       jobconfirmtitle = "Start working as a Taxi",
       jobconfirmtext = "Are you sure you want to start work?",
       jobname = "taxi",
 
      --Locales 
       jobselectortitle = "JOB CENTER",
       jobselectortext = "Get your Taxi Job. ",
    },
	
	{
       title = "Farmer",
       img = "job-logo.png",
       lvl = "2 LVL", 
       time = "1h",
       players = "5 Players",
       jobdescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed justo id ante mattis varius vel et nisi. Aliquam sodales ullamcorper elit eget dapibus. Nullam massa leo, elementum feugiat elit vitae, lobortis gravida massa. Phasellus velaugue aliquet, tempus nisl vulputate, interdum ligula. Mauris ut lacus cursus, volutpat augue a, maximus mauris.",
       titleimg1 = "farmer-exp.png",
       titleimg2 = "farmer-exp2.png",
       jobconfirmtitle = "Start working as a Taxi",
       jobconfirmtext = "Are you sure you want to start work?",
       jobname = "taxi",
 
      --Locales 
       jobselectortitle = "JOB SELECTOR",
       jobselectortext = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    },
	
	{
       title = "Miner",
       img = "miner.png",
       lvl = "2 LVL", 
       time = "1h",
       players = "3 Players",
       jobdescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed justo id ante mattis varius vel et nisi. Aliquam sodales ullamcorper elit eget dapibus. Nullam massa leo, elementum feugiat elit vitae, lobortis gravida massa. Phasellus velaugue aliquet, tempus nisl vulputate, interdum ligula. Mauris ut lacus cursus, volutpat augue a, maximus mauris.",
       titleimg1 = "miner-exp.png",
       titleimg2 = "miner-exp2.png",
       jobconfirmtitle = "Start working as a Taxi",
       jobconfirmtext = "Are you sure you want to start work?",
       jobname = "taxi",
 
      --Locales 
       jobselectortitle = "JOB SELECTOR",
       jobselectortext = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    },
	
	{
       title = "Police",
       img = "police.png",
       lvl = "2 LVL", 
       time = "1h",
       players = "8 Players",
       jobdescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed justo id ante mattis varius vel et nisi. Aliquam sodales ullamcorper elit eget dapibus. Nullam massa leo, elementum feugiat elit vitae, lobortis gravida massa. Phasellus velaugue aliquet, tempus nisl vulputate, interdum ligula. Mauris ut lacus cursus, volutpat augue a, maximus mauris.",
       titleimg1 = "police-exp.png",
       titleimg2 = "police-exp2.png",
       jobconfirmtitle = "Start working as a Taxi",
       jobconfirmtext = "Are you sure you want to start work?",
       jobname = "taxi",
 
      --Locales 
       jobselectortitle = "JOB SELECTOR",
       jobselectortext = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    },
	
	{
       title = "Medic",
       img = "ambulance.png",
       lvl = "2 LVL", 
       time = "1h",
       players = "10 Players",
       jobdescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed justo id ante mattis varius vel et nisi. Aliquam sodales ullamcorper elit eget dapibus. Nullam massa leo, elementum feugiat elit vitae, lobortis gravida massa. Phasellus velaugue aliquet, tempus nisl vulputate, interdum ligula. Mauris ut lacus cursus, volutpat augue a, maximus mauris.",
       titleimg1 = "medic-exp.png",
       titleimg2 = "medic-exp2.png",
       jobconfirmtitle = "Start working as a Taxi",
       jobconfirmtext = "Are you sure you want to start work?",
       jobname = "taxi",
 
      --Locales 
       jobselectortitle = "JOB SELECTOR",
       jobselectortext = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    },
	
	{
       title = "Sheriff",
       img = "sheriff.png",
       lvl = "2 LVL", 
       time = "1h",
       players = "1 Players",
       jobdescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed justo id ante mattis varius vel et nisi. Aliquam sodales ullamcorper elit eget dapibus. Nullam massa leo, elementum feugiat elit vitae, lobortis gravida massa. Phasellus velaugue aliquet, tempus nisl vulputate, interdum ligula. Mauris ut lacus cursus, volutpat augue a, maximus mauris.",
       titleimg1 = "sheriff-exp.png",
       titleimg2 = "sheriff-exp2.png",
       jobconfirmtitle = "Start working as a Taxi",
       jobconfirmtext = "Are you sure you want to start work?",
       jobname = "taxi",
 
      --Locales 
       jobselectortitle = "JOB SELECTOR",
       jobselectortext = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    },
	
	{
       title = "Trucker",
       img = "trucker.png",
       lvl = "2 LVL", 
       time = "1h",
       players = "2 Players",
       jobdescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed justo id ante mattis varius vel et nisi. Aliquam sodales ullamcorper elit eget dapibus. Nullam massa leo, elementum feugiat elit vitae, lobortis gravida massa. Phasellus velaugue aliquet, tempus nisl vulputate, interdum ligula. Mauris ut lacus cursus, volutpat augue a, maximus mauris.",
       titleimg1 = "trucker-exp.png",
       titleimg2 = "trucker-exp2.png",
       jobconfirmtitle = "Start working as a Taxi",
       jobconfirmtext = "Are you sure you want to start work?",
       jobname = "taxi",
 
      --Locales 
       jobselectortitle = "JOB SELECTOR",
       jobselectortext = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    }
	
}

