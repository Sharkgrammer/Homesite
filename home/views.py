import smtplib
import ssl
import os

from django.shortcuts import render

from home.models import Project


def index(request):
    all_projects = Project.objects.all()  # [:3]

    print(len(all_projects))

    for x in all_projects:
        print(x.title)

    return render(request, 'index.html', {'all_projects': all_projects})


def email(request):
    if request.method == "POST":
        params = request.POST

        emailP = params.get("emai")
        subjectP = params.get("subj")
        detailsP = params.get("deta")

        print(emailP)
        print(subjectP)
        print(detailsP)

        port = 465
        send_password = os.environ['pass']
        send_mail = os.environ['email']
        to_mail = "danielkeanekelly@gmail.com"

        context = ssl.create_default_context()

        with smtplib.SMTP_SSL("smtp.gmail.com", port, context=context) as server:
            server.login(send_mail, send_password)

            content = "From: HomeSite " + emailP + "\nSubject: " + subjectP + " from HomeSite\n\n" + detailsP \
                      + " from " + emailP

            server.sendmail(send_mail, to_mail, content)

        return index(request)


def test(request):
    return render(request, 'test.html')
