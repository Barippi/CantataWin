/*
 * Cantata
 *
 * Copyright (c) 2011-2018 Craig Drummond <craig.p.drummond@gmail.com>
 *
 * ----
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

#ifndef TAG_HELPER_H
#define TAG_HELPER_H

#include <QObject>
#include <QByteArray>

class QLocalSocket;

class TagHelper : public QObject
{
    Q_OBJECT

public:
    static void enableDebug();

    TagHelper(const QString &sockName, int parent);
    ~TagHelper() override;

private Q_SLOTS:
    void dataReady();
    void checkParent();

private:
    void process();

private:
    int parentPid;
    QLocalSocket *socket;
    qint32 dataSize;
    QByteArray data;
};

#endif