#This takes in a "size" and runs it?
from PIL import Image, ImageDraw
import face_recognition
from optparse import OptionParser

parser = OptionParser()
parser.add_option("-i", "--input", dest="input", default=1,
                  help="number of training epochs")

(options, args) = parser.parse_args()

fileInput = str(options.input)
print ('file: '+fileInput)


image = face_recognition.load_image_file(fileInput)
face_landmarks_list = face_recognition.face_landmarks(image)
