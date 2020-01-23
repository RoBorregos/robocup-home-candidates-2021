# EIR-2020-AtHomeEducation

Software para el curso "RoboCup@Home Education para robots de servicio" de la Escuela de Invierno de Robótica 2019-2020.

## Requerimientos

* Ubuntu 18.04
* ROS Melodic

Los paquetes también fueron probados para Ubuntu 16.04 y ROS Kinectic, sin embargo, el script de instalación fue hecho para ROS Melodic.

Adicionalmente se recomienda tener micrófono y bocinas para las pruebas de reconocimiento y síntesis de voz. La mayoría de las pruebas ser harán en simulación, sin embargo, al final del curso se harán demostraciones utilizando un Turtlebot. 

## Instalación

Nota: se asume que ya se tiene instalado Ubuntu 18.04 y ROS Melodic

* $ git clone https://github.com/mnegretev/EIR-2020-AtHomeEducation
* $ cd EIR-2020-AtHomeEducation
* $ ./Setup.sh
* $ cd catkin_ws
* $ catkin_make -j2 -l2
* $ sudo usermod -a -G audio <user_name>

La última instrucción agrega al usuario actual al grupo 'audio', por lo que es necesario hacer logout y login nuevamente. Para probar la instalación:

* $ source EIR-2020-AtHomeEducation/catkin_ws/devel/setup.bash
* $ roslaunch bring_up robotino_simul.launch

Si todo se instaló y compiló correctamente, se debería ver un rviz como el siguiente:

![RepoExample](https://github.com/mnegretev/EIR-2020-AtHomeEducation/blob/master/Slides/Figures/RepoExample.png)

Para compilar las diapositivas del curso (se asume que se tiene instalado texlive):

* $ cd ~/EIR-2020-AtHomeEducation/Slides
* $ pdflatex EIR_2020_AtHomeEducation.tex

En la carpeta /Slides hay una versión compilada.

## Contacto
Dr. Marco Negrete<br>
Profesor Asociado C<br>
Departamento de Procesamiento de Señales<br>
Facultad de Ingeniería, UNAM <br>
[mnegretev.info](http://mnegretev.info)<br>
contact@mnegretev.info<br>
