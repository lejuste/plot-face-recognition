#This takes in a "size" and runs it?
from PIL import Image, ImageDraw
import face_recognition
from optparse import OptionParser

parser = OptionParser()
parser.add_option("-s", "--size", dest="size", default=1,
                  help="number of training epochs")

(options, args) = parser.parse_args()

size = int(options.size)
print ('\"Size\": ' +str(size))

image = face_recognition.load_image_file("obama_small.jpg")

for x in range(0, size):
    #print "We're on time %d" % (x)
    face_landmarks_list = face_recognition.face_landmarks(image)
