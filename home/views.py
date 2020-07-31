import smtplib
import ssl
import os

from django.shortcuts import render

from home.models import Project, Personal, Experience


def index(request):
    projects_shown = 6
    all_projects = Project.objects.all()
    projects_len = len(all_projects)
    projects = reversed(list(all_projects[projects_len - projects_shown: projects_len]))

    all_personals = Personal.objects.all()

    all_experiences = Experience.objects.all()
    experience_shown = 3
    experience_len = len(all_experiences)
    experiences = reversed(list(all_experiences[experience_len - experience_shown: experience_len]))

    return render(request, 'index.html', {'all_projects': projects,
                                          "all_personals": all_personals, "all_experiences": experiences})


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
