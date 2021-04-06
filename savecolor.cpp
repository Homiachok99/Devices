#include "mainwin.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <QFile>
#include <fstream>
#include <QString>
#include <QTextStream>

using namespace std;

SaveColor::SaveColor(QObject *parent): QObject(parent)
{
}

void SaveColor::colorSlots(QString col1, QString col2, QString bl, QString gr, QString r, QString br, QString w, QString c, QString b)
{
    QFile col ("/home/tana/Proj/Devices-main/color.txt") ;
    if (!col.exists())
    {
        exit(1);
    }
    if (col.open (QIODevice::WriteOnly | QIODevice::Text))
    {
        QTextStream stream(&col) ;
        stream << col1 << "\n";
        stream << col2 << "\n";
        stream << bl << "\n";
        stream << gr << "\n";
        stream << r << "\n";
        stream << br << "\n";
        stream << w << "\n";
        stream << c << "\n";
        stream << b << "\n";
        col.flush();
        col.close();
    }
}

QString SaveColor::colorSet_colorChange()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString mainColor = text.readLine();
    return mainColor;
}

QString SaveColor::colorSet_colorRect()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString rectColor;
    rectColor = text.readLine();
    rectColor = text.readLine();
    return rectColor;
}

bool SaveColor::check_Black()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString bol;
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    if (bol == "false")
    {
        return false;
    }
    else
    {
        return true;
    }
}

bool SaveColor::check_Green()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString bol;
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    if (bol == "false")
    {
        return false;
    }
    else
    {
        return true;
    }
}

bool SaveColor::check_Red()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString bol;
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    if (bol == "false")
    {
        return false;
    }
    else
    {
        return true;
    }
}

bool SaveColor::check_Brown()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString bol;
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    if (bol == "false")
    {
        return false;
    }
    else
    {
        return true;
    }
}

bool SaveColor::check_Warm()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString bol;
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    if (bol == "false")
    {
        return false;
    }
    else
    {
        return true;
    }
}

bool SaveColor::check_Cold()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString bol;
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    if (bol == "false")
    {
        return false;
    }
    else
    {
        return true;
    }
}

bool SaveColor::check_Blue()
{
    QFile col("/home/tana/Proj/Devices-main/color.txt");
    col.open(QIODevice::ReadOnly | QIODevice::Text);
    QTextStream text(&col);
    QString bol;
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    bol = text.readLine();
    if (bol == "false")
    {
        return false;
    }
    else
    {
        return true;
    }
}
