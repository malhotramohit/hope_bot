# Functional:
#### - Our objective is to give “HOPE”- a credible and mobile partner to expectant mothers.
#### - Hope will provide a huge wealth of information to make these nine months a more comfortable and memorable journey for the mothers to be.
#### - Hope will not only be scheduling the Doctor’s appointment but also schedule daily routine for medicines/health supplements and remind when the medicine time is due.
#### - Hope will store/archive all the doctor’s prescription and the test reports, upon asking Hope will share the same with the concerned doctor.
#### - Hope will answer a long list of FAQs related to the pregnancy such as jargons and tips to keep calm.
#### - When the user will ask Hope to alert the hospital with n number of keywords, Hope will do the needful and share the reports to reduce wait time. If there any complication, the hospitals will be ready. At the same time, Hope will also alert the Spouse or SOS contact person.
#### - Hope will be designed to alert the 911 as well if required in an emergency.

# Technical:
#### - Use Contextual AI for better user experience.
#### - Use BERT/DIET based classifier.
#### - Use an open-source solution to avoid data privacy by giving an on-premise deployment hence making cost-effective.
#### - Use cloud for orchestration.

![Hope Bot](./hope_arch.png)

# Hope Bot - For SmartCare App

## Functional:
- Our objective is to give “HOPE”- a credible and mobile partner to expectant mothers.
- Hope will provide a huge wealth of information to make these nine months a more comfortable and memorable journey for the mothers to be.
- Hope will not only be scheduling the Doctor’s appointment but also schedule daily routine for medicines/health supplements and remind when the medicine time is due.
- Hope will store/archive all the doctor’s prescription and the test reports, upon asking Hope will share the same with the concerned doctor.
- Hope will answer a long list of FAQs related to the pregnancy such as jargons and tips to keep calm.
- When the user will ask Hope to alert the hospital with n number of keywords, Hope will do the needful and share the reports to reduce wait time. If there any complication, - the hospitals will be ready. At the same time, Hope will also alert the Spouse or SOS contact person.
- Hope will be designed to alert the 911 as well if required in an emergency.

## Technical:
- Use Contextual AI for better user experience.
- Use BERT/DIET based classifier.
- Use an open-source solution to avoid data privacy by giving an on-premise deployment hence making cost-effective.
- Use cloud for orchestration.


## Quick Hands-On

#### 1. Chat through API's

POST : https://hopebot.azurewebsites.net/webhooks/rest/webhook

{"sender": "jsessica" , "message" : "hi"}

Response:

[
    {
        "recipient_id": "jsessica",
        "text": "Hey! How are you?"
    }
]

#### 2. Train Model through API's

![Train Model](./train_model.png)


## How to install rasa

#### 1. Install the Python development environment on your system

> Requires Python 3.6–3.7.7 and pip >= 19.0

```shell
python3 --version
pip3 --version
virtualenv --version1
```

If these packages are already installed, skip to the next step.\
Otherwise, install Python, the pip package manager, and Virtualenv:

- **Windows**
  Install the Microsoft Visual C++ Redistributable for Visual Studio 2015, 2017, and 2019. Starting with the TensorFlow 2.1.0 version, the msvcp140_1.dll file is required from this package (which may not be provided from older redistributable packages). The redistributable comes with Visual Studio 2019 but can be installed separately:

1. Go to the [Microsoft Visual C++ downloads](https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads/),
2. Scroll down the page to the Visual Studio 2015, 2017 and 2019 section.
3. Download and install the Microsoft Visual C++ Redistributable for Visual Studio 2015, 2017 and 2019 for your platform.
   Make sure [long paths are enabled](https://superuser.com/questions/1119883/windows-10-enable-ntfs-long-paths-policy-option-missing) on Windows.

Install the 64-bit [Python 3 release for Windows](https://www.python.org/downloads/windows/) (select pip as an optional feature).

- **mac OS**

Install using the [Homebrew](https://brew.sh/) package manager:

```shell
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ export PATH="/usr/local/bin:/usr/local/sbin:\$PATH"
$ brew update
$ brew install python # Python 3
$ sudo pip3 install -U virtualenv # system-wide install
```

- **Ubuntu**

```shell
$ sudo apt update
$ sudo apt install python3-dev python3-pip
$ sudo pip3 install -U virtualenv # system-wide install
```

###**`pip3 install -U pip virtualenv`**

> Prefer v3.6 / v3.7.7
> Caution: Upgrading the system pip can cause problems.
> If not in a virtual environment, use python3 -m pip for the commands below. This ensures that you upgrade and use the Python pip instead of the system pip.

#### 2. Create a virtual environment (recommended)

Python virtual environments are used to isolate package installation from the system.

- **Ubuntu / mac OS**

  - Create a new virtual environment by choosing a Python interpreter and making a `./venv` directory to hold it:
    `virtualenv --system-site-packages -p python3 ./venv`

  - Activate virtual environment\
    `source ./venv/bin/activate`

  - When virtualenv is active, your shell prompt is prefixed with (venv).

  - Install packages within a virtual environment without affecting the host system setup. Start by upgrading pip:

    ```shell
    (venv) $ pip install --upgrade pip

    (venv) $ pip list  # show packages installed within the virtual environment
    ```

  - And to exit virtualenv later:
    `(venv) $ deactivate`

* **Windows**

  - Create a new virtual environment by choosing a Python interpreter and making a .\venv directory to hold it:

    `virtualenv --system-site-packages -p python3 ./venv`

  - Activate the virtual environment:

    `.\venv\Scripts\activate`

  - Install packages within a virtual environment without affecting the host system setup. Start by upgrading pip:

    ````shell
    pip install --upgrade pip
    pip list  # show packages installed within the virtual environment```
    ````

  - And to exit virtualenv later:

    ```shell
      deactivate # don't exit until you're done using TensorFlow
    ```
* **Docker Both On-premise and Azure**

     ````shell
     docker compose up
     ```
    ````

#### 3. Install Rasa

```shell
(venv) $ pip install rasa
```

> Note: Run this in virtual environment. If issues regarding installing raise issues.

## How to run Hope bot

### Rasa Server

`rasa run --enable-api --cors '*'`

> [http://localhost:5005/](http://localhost:5005/)

### Rasa Action Server

`rasa run actions`

> [http://localhost:5055/](http://localhost:5055/)

