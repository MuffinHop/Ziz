/*======================================================================
 CTOY
 version 1.0
------------------------------------------------------------------------
 Copyright (c) 2015 Anael Seghezzi <www.maratis3d.com>

 This software is provided 'as-is', without any express or implied
 warranty. In no event will the authors be held liable for any damages
 arising from the use of this software.

 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it
 freely, subject to the following restrictions:

 1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software
    in a product, an acknowledgment in the product documentation would
    be appreciated but is not required.

 2. Altered source versions must be plainly marked as such, and must not
    be misrepresented as being the original software.

 3. This notice may not be removed or altered from any source
    distribution.

========================================================================*/

#include "ctoy.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <memory.h>
#include <time.h>
#include <stdint.h>
#include <sys/types.h>
#include <sys/stat.h>

#if defined(_MSC_VER) && __STDC_VERSION__ < 199901L
#define inline __forceinline
#endif

#ifdef WIN32
#include <windows.h>
#include <WinBase.h>
#include <direct.h>
#define mkdir(f, o) _mkdir(f)
#else
#include <unistd.h>
#endif

#ifdef __APPLE__
#include <OpenAL/al.h>
#include <OpenAL/alc.h>
#else
#include <AL/al.h>
#include <AL/alc.h>
#endif

#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#include <GLES2/gl2.h>
#define GLFW_INCLUDE_ES2
#else
#include <tinycthread.h>
#define GLFW_INCLUDE_NONE
#endif

#ifdef __APPLE__
#include <OpenGL/gl.h>
#include <OpenGL/glu.h>
#else
#include <GL/gl.h>
#include <GL/glu.h>
#endif

#include <GLFW/glfw3.h>

#define M_MATH_IMPLEMENTATION
#define M_IMAGE_IMPLEMENTATION
#define M_DIST_IMPLEMENTATION
#define M_RASTER_IMPLEMENTATION
#define M_PF_IMPLEMENTATION
#include "m_math.h"
#include "m_image.h"
#include "m_dist.h"
#include "m_raster.h"
#include "m_path_finding.h"
#undef M_MATH_IMPLEMENTATION
#undef M_IMAGE_IMPLEMENTATION
#undef M_DIST_IMPLEMENTATION
#undef M_RASTER_IMPLEMENTATION
#undef M_PF_IMPLEMENTATION

/* system */
char           ctoy__title[256];
struct m_image ctoy__buffer_ubyte = M_IMAGE_IDENTITY();
unsigned long  ctoy__t = 0;
void *         ctoy__memory = NULL;
GLFWwindow *   ctoy__window = NULL;
GLuint         ctoy__texture;
int            ctoy__state = 1;
int            ctoy__prev_win_x = 0;
int            ctoy__prev_win_y = 0;
int            ctoy__prev_win_width = 0;
int            ctoy__prev_win_height = 0;
int            ctoy__win_width = 0;
int            ctoy__win_height = 0;
int            ctoy__fb_width = 0;
int            ctoy__fb_height = 0;
int            ctoy__tex_width = 0;
int            ctoy__tex_height = 0;
char           **ctoy__argv;
int            ctoy__argc = 0;


/* input */
#define              CTOY_MOUSE_BUTTON_COUNT (GLFW_MOUSE_BUTTON_LAST+1)
#define              CTOY_KEY_COUNT (GLFW_KEY_LAST+1)
#define              CTOY_JOY_COUNT (GLFW_JOYSTICK_LAST+1)
#define              CTOY_JOY_AXIS_MAX 32
#define              CTOY_JOY_BUTTON_MAX 32
char                 ctoy__button[CTOY_KEY_COUNT][2];
char                 ctoy__mouse_button[CTOY_MOUSE_BUTTON_COUNT][2];
char                 ctoy__joystick_button[CTOY_JOY_COUNT][CTOY_JOY_BUTTON_MAX][2];
float                ctoy__joystick_axis[CTOY_JOY_COUNT][CTOY_JOY_AXIS_MAX];
char                 ctoy__joystick_button_count[CTOY_JOY_COUNT];
char                 ctoy__joystick_axis_count[CTOY_JOY_COUNT];
unsigned int         ctoy__char_queue[CTOY_CHAR_MAX];
struct ctoy_pen_data ctoy__pen_data_queue[CTOY_PEN_DATA_MAX];
int                  ctoy__char_count = 0;
int                  ctoy__pen_data_count = 0;
float                ctoy__mouse_x = 0;
float                ctoy__mouse_y = 0;
float                ctoy__scroll_x = 0;
float                ctoy__scroll_y = 0;

/* sound */
ALCdevice *    ctoy__oal_device = NULL;
ALCcontext *   ctoy__oal_context = NULL;

double bpm = 150.0;
int rpb = 8; /* rows per beat*/
double row_rate = 20;
double row;
ALenum format;
ALvoid* data;
ALsizei size;
ALsizei freq;
float sample_rate;

struct sync_device *rocket;
#include <stdbool.h>

static bool rocket_initialized = false;

struct sync_device * initialize_rocket_device() {
    if (!rocket_initialized) {
        rocket = sync_create_device("sync");
        if (!rocket) {
            printf("Out of memory?\n");
            return NULL;
        }

#ifndef SYNC_PLAYER
        if (sync_tcp_connect(rocket, "localhost", SYNC_DEFAULT_PORT)) {
            printf("Failed to connect to host\n");
        }
#endif
        rocket_initialized = true;
    }
    return rocket;
}
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_VARIABLES 512  // Adjust based on expected usage
#define MAX_NAME_LENGTH 64 // Adjust based on expected name length

// Structure to hold Rocket variable data
typedef struct {
    char name[MAX_NAME_LENGTH];
    float value;
} RocketVariable;

// Array to hold Rocket variables
RocketVariable rocketVariables[MAX_VARIABLES];
int rocketVariableCount = 0;  // Number of variables currently stored

// Function to add a new variable to the dictionary
void add_to_rocket(const char *name) {
    // Check if the variable already exists
    for (int i = 0; i < rocketVariableCount; i++) {
        if (strcmp(rocketVariables[i].name, name) == 0) {
            return;
        }
    }

    // Add a new variable if it doesn't exist
    if (rocketVariableCount < MAX_VARIABLES) {
        strncpy(rocketVariables[rocketVariableCount].name, name, MAX_NAME_LENGTH);
        rocketVariables[rocketVariableCount].value = 0.0f;
        rocketVariableCount++;
    } else {
        printf("Rocket variable storage full! Cannot add more variables.\n");
    }
}

// Function to retrieve the value of a variable from the dictionary
float get_from_rocket(const char *name) {
    for (int i = 0; i < rocketVariableCount; i++) {
        if (strcmp(rocketVariables[i].name, name) == 0) {
            return rocketVariables[i].value;
        }
    }

    printf("Variable '%s' not found!\n", name);
    return 0.0f; // Return a default value if not found
}

void reset_rocket_device() {
    if (rocket_initialized) {
        sync_destroy_device(rocket);
        rocket_initialized = false;
    }
}


#include <stdio.h>
#include <stdlib.h>
#include <AL/al.h>
#include <AL/alc.h>
#include <stdint.h>

typedef struct {
    char riff[4];              // "RIFF"
    uint32_t overall_size;      // Size of the entire file minus 8 bytes
    char wave[4];              // "WAVE"
    char fmt_chunk_marker[4];  // "fmt " (includes trailing space)
    uint32_t length_of_fmt;     // Length of the format data
    uint16_t format_type;       // Format type (1 is PCM)
    uint16_t channels;          // Number of channels
    uint32_t sample_rate;       // Sampling rate (blocks per second)
    uint32_t byterate;          // (Sample Rate * BitsPerSample * Channels) / 8
    uint16_t block_align;       // (BitsPerSample * Channels) / 8
    uint16_t bits_per_sample;   // Bits per sample
    char data_chunk_header[4];  // "data"
    uint32_t data_size;         // Size of the data section
} wav_header;

int load_wav_file(const char *filename, ALuint *buffer) {
    FILE *fp = fopen(filename, "rb");
    if (!fp) {
        printf("Failed to open file %s\n", filename);
        return 0;
    }

    wav_header header;
    fread(&header, sizeof(wav_header), 1, fp);

    // Verify that this is a valid WAV file
    if (strncmp(header.riff, "RIFF", 4) != 0 || strncmp(header.wave, "WAVE", 4) != 0) {
        printf("Invalid WAV file format.\n");
        fclose(fp);
        return 0;
    }

    ALenum format;
    if (header.bits_per_sample == 16) {
        if (header.channels == 1) {
            format = AL_FORMAT_MONO16;
        } else if (header.channels == 2) {
            format = AL_FORMAT_STEREO16;
        } else {
            printf("Unsupported number of channels: %d\n", header.channels);
            fclose(fp);
            return 0;
        }
    } else if (header.bits_per_sample == 8) {
        if (header.channels == 1) {
            format = AL_FORMAT_MONO8;
        } else if (header.channels == 2) {
            format = AL_FORMAT_STEREO8;
        } else {
            printf("Unsupported number of channels: %d\n", header.channels);
            fclose(fp);
            return 0;
        }
    } else {
        printf("Unsupported bits per sample: %d\n", header.bits_per_sample);
        fclose(fp);
        return 0;
    }

    // Allocate memory for the audio data
    unsigned char *data = (unsigned char *)malloc(header.data_size);
    if (!data) {
        printf("Failed to allocate memory for WAV data.\n");
        fclose(fp);
        return 0;
    }

    fread(data, 1, header.data_size, fp);
    fclose(fp);

    // Generate an OpenAL buffer and upload the audio data
    alGenBuffers(1, buffer);
    alBufferData(*buffer, format, data, header.data_size, header.sample_rate);
    sample_rate = header.sample_rate;
    free(data);
    return 1;
}

#ifndef SYNC_PLAYER

static void al_pause(void *d, int flag)
{
    ALuint source = *((ALuint *)d);
    if (flag)
        alSourcePause(source);
    else
        alSourcePlay(source);
}

static void al_set_row(void *d, int row)
{
    ALuint source = *((ALuint *)d);
    ALfloat position = (ALfloat)row / row_rate;
    alSourcef(source, AL_SEC_OFFSET, position);
}

static int al_is_playing(void *d)
{
    ALuint source = *((ALuint *)d);
    ALint state;
    alGetSourcei(source, AL_SOURCE_STATE, &state);
    return state == AL_PLAYING;
}

static struct sync_cb al_cb = {
    al_pause,
    al_set_row,
    al_is_playing
};

#endif /* !defined(SYNC_PLAYER) */

ALCdevice *device;
ALCcontext *context;
ALuint source;
ALuint buffer;
ALfloat frequency;

static ALfloat get_position_in_seconds(ALuint source)
{
    ALint bytes;
    alGetSourcei(source, AL_BYTE_OFFSET, &bytes);
    alGetSourcef(source, AL_PITCH, &frequency);
    ALfloat seconds = (ALfloat)bytes / frequency;
    return seconds;
}

GLFWwindow * ctoy__get_glfw_window(void)
{
   return ctoy__window;
}

static void ctoy__close_callback(GLFWwindow * window)
{
   ctoy__state = 0;
}

static void ctoy__size_callback(GLFWwindow * window, int width, int height)
{
   ctoy__win_width = width;
   ctoy__win_height = height;
}

static void ctoy__cursorpos_callback(GLFWwindow * window, double x, double y)
{
   ctoy__mouse_x = (float)x / (float)ctoy__win_width;
   ctoy__mouse_y = (float)y / (float)ctoy__win_height;
}

void ctoy__scroll_callback(GLFWwindow* window, double xoffset, double yoffset)
{
   ctoy__scroll_x += (float)xoffset / (float)ctoy__win_width;
   ctoy__scroll_y += (float)yoffset / (float)ctoy__win_height;
}

static void ctoy__key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
   if (key >=0 && key < CTOY_KEY_COUNT) {
      ctoy__button[key][0] = action + 1;
      ctoy__button[key][1] = action;
   }
}

static void ctoy__mousebutton_callback(GLFWwindow * window, int button, int action, int mods)
{
   if (button >=0 && button < CTOY_MOUSE_BUTTON_COUNT) {
      ctoy__mouse_button[button][0] = action + 1;
      ctoy__mouse_button[button][1] = action;
   }
}

static void ctoy__char_callback(GLFWwindow * window, unsigned int key)
{
   if (ctoy__char_count < CTOY_CHAR_MAX) {
      ctoy__char_queue[ctoy__char_count] = key;
      ctoy__char_count++;
   }
}

static void ctoy__penTabletData_callback(double x, double y, double z, double pressure, double pitch, double yaw, double roll)
{
   int xpos, ypos;
   glfwGetWindowPos(ctoy__window, &xpos, &ypos);

   if (ctoy__pen_data_count < CTOY_PEN_DATA_MAX) {
      struct ctoy_pen_data pd = {
         (x - xpos) / ctoy__win_width,
         (y - ypos) / ctoy__win_height,
         z, pressure, pitch, yaw, roll};
      ctoy__pen_data_queue[ctoy__pen_data_count] = pd;
      ctoy__pen_data_count++;
   }
   else {
      assert(0);
   }
}

static void ctoy__penTabletCursor_callback(unsigned int cursor)
{
}

static void ctoy__penTabletProximity_callback(int proximity)
{
}

static void ctoy__draw_texture(GLuint texture)
{
#ifdef LIBDRAGON
    graphics_draw_sprite_trans(disp, 0, 0, (sprite_t*)texture);
#else
  float vertices[8] = {0, 0, 0, 1, 1, 0, 1, 1};

  glEnable(GL_TEXTURE_2D);
  glBindTexture(GL_TEXTURE_2D, texture);

  glBegin(GL_TRIANGLE_STRIP);
    glTexCoord2f(0.0f, 0.0f); glVertex2f(-1.0f, -1.0f);
    glTexCoord2f(0.0f, 1.0f); glVertex2f(-1.0f,  1.0f);
    glTexCoord2f(1.0f, 0.0f); glVertex2f( 1.0f, -1.0f);
    glTexCoord2f(1.0f, 1.0f); glVertex2f( 1.0f,  1.0f);
  glEnd();

  glDisable(GL_TEXTURE_2D);
#endif
}

static void ctoy__setup_texture(int width, int height)
{
#ifdef LIBDRAGON
    // Setup texture for Libdragon
    glBindTexture(GL_TEXTURE_2D, ctoy__texture);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, NULL);
    ctoy__tex_width = width;
    ctoy__tex_height = height;
#else
  glBindTexture(GL_TEXTURE_2D, ctoy__texture);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, 0);
  ctoy__tex_width = width;
  ctoy__tex_height = height;
#endif
}

static GLFWmonitor *ctoy__monitor_init(void)
{
   GLFWmonitor *monitor = glfwGetPrimaryMonitor();
   const GLFWvidmode *mode = glfwGetVideoMode(monitor);
   
   glfwWindowHint(GLFW_RED_BITS, mode->redBits);
   glfwWindowHint(GLFW_GREEN_BITS, mode->greenBits);
   glfwWindowHint(GLFW_BLUE_BITS, mode->blueBits);
   glfwWindowHint(GLFW_REFRESH_RATE, mode->refreshRate);
   
   ctoy__win_width = mode->width;
   ctoy__win_height = mode->height;
   return monitor;
}

static int ctoy__window_init(const char *title, int fullscreen)
{
   GLFWmonitor *monitor = NULL;
   GLFWwindow *win;

   if (fullscreen)
      monitor = ctoy__monitor_init();

   win = glfwCreateWindow(ctoy__win_width, ctoy__win_height, title, monitor, ctoy__window);
   if (win == NULL)
      return 0;
   
   if (ctoy__window)
      glfwDestroyWindow(ctoy__window);

   ctoy__window = win;
   sprintf(ctoy__title, "%s", title);
   
   glfwSetWindowCloseCallback(ctoy__window, ctoy__close_callback);
   glfwSetWindowSizeCallback(ctoy__window, ctoy__size_callback);
   glfwSetKeyCallback(ctoy__window, ctoy__key_callback);
   glfwSetMouseButtonCallback(ctoy__window, ctoy__mousebutton_callback);
   glfwSetCharCallback(ctoy__window, ctoy__char_callback);
   glfwSetCursorPosCallback(ctoy__window, ctoy__cursorpos_callback);
   glfwSetScrollCallback(ctoy__window, ctoy__scroll_callback);
   glfwMakeContextCurrent(ctoy__window);
   glfwSwapInterval(1);

   glEnable(GL_TEXTURE_2D);
   glGenTextures(1, &ctoy__texture);

   return 1;
}

static void ctoy__joy_update(int joy)
{
   const float *axis;
   const unsigned char *button;
   int axis_count, button_count;

   axis = glfwGetJoystickAxes(joy, &axis_count);
   button = glfwGetJoystickButtons(joy, &button_count);

   if (axis) {
      int c = M_MIN(axis_count, CTOY_JOY_AXIS_MAX);
      ctoy__joystick_axis_count[joy] = c;
      memcpy(ctoy__joystick_axis[joy], axis, c * sizeof(float));
   }

   if (button) {
      int i, c = M_MIN(button_count, CTOY_JOY_BUTTON_MAX);
      ctoy__joystick_button_count[joy] = c;
      for (i = 0; i < c; i++) {
         int s0 = ctoy__joystick_button[joy][i][1];
         int s1 = button[i];
         ctoy__joystick_button[joy][i][0] = s1 - s0;
         ctoy__joystick_button[joy][i][1] = s1;
      }
   }
}

static int ctoy__create(const char *title, int width, int height)
{
#ifdef LIBDRAGON
    display_init( RESOLUTION_320x240, DEPTH_32_BPP, 2, GAMMA_NONE, ANTIALIAS_RESAMPLE );
    ctoy__tex_width = 320;
    ctoy__tex_height = 240;
#else
   int i;

   memset(ctoy__button, 0, sizeof(ctoy__button));
   memset(ctoy__mouse_button, 0, sizeof(ctoy__mouse_button));
   memset(ctoy__joystick_button, 0, sizeof(ctoy__joystick_button));
   memset(ctoy__joystick_axis, 0, sizeof(ctoy__joystick_axis));
   memset(ctoy__joystick_button_count, 0, sizeof(ctoy__joystick_button_count));
   memset(ctoy__joystick_axis_count, 0, sizeof(ctoy__joystick_axis_count));

   glfwInit();

   ctoy__win_width = width;
   ctoy__win_height = height;
   ctoy__tex_width = width;
   ctoy__tex_height = height;

   if (!ctoy__window_init(title, 0))
      return 0;

   /* Joysticks */
   for (i = 0; i < CTOY_JOY_COUNT; i++)
      ctoy__joy_update(i);

   /* Texture */
   glGenTextures(1, &ctoy__texture);
   ctoy__setup_texture(ctoy__tex_width, ctoy__tex_height);
 #endif


   return 1;
}

static void ctoy__get_directory(char *dest, const char *src)
{
   char *s;
   strcpy(dest, src);
#ifdef WIN32
   s = strrchr(dest,'\\');
#else
   s = strrchr(dest,'/');
#endif
   if (s) *s = '\0';
}

static void ctoy__set_working_dir(const char *dir)
{
#ifdef WIN32
   SetCurrentDirectory(dir);
#else
   chdir(dir);
#endif
}

static void ctoy__destroy(void)
{
   glDeleteTextures(1, &ctoy__texture);
   glfwMakeContextCurrent(NULL);
   glfwTerminate();
   ctoy__window = NULL;
   m_image_destroy(&ctoy__buffer_ubyte);

#ifndef SYNC_PLAYER
    sync_save_tracks(rocket);
#endif
    sync_destroy_device(rocket);

    alSourceStop(source);
    alDeleteSources(1, &source);
    alDeleteBuffers(1, &buffer);
    alcMakeContextCurrent(NULL);
    alcDestroyContext(context);
    alcCloseDevice(device);
}

static void ctoy__update(void)
{
   int i;

   /* joystick */
   for (i = 0; i < CTOY_JOY_COUNT; i++)
      ctoy__joy_update(i);

   /* flush events */
   for (i = 0; i < CTOY_KEY_COUNT; i++)
      ctoy__button[i][0] = 0;
   for (i = 0; i < CTOY_MOUSE_BUTTON_COUNT; i++)
      ctoy__mouse_button[i][0] = 0; 
   ctoy__char_count = 0;
   ctoy__pen_data_count = 0;

   ctoy__scroll_x = 0;
   ctoy__scroll_y = 0;

   glfwPollEvents();
   
   glfwGetFramebufferSize(ctoy__window, &ctoy__fb_width, &ctoy__fb_height);

   ctoy__t++;

   double seconds = get_position_in_seconds(source) / sample_rate;
   row = seconds * row_rate;
#ifndef SYNC_PLAYER
   if (sync_update(rocket, (int)floor(row), &al_cb, (void *)&source))
      sync_tcp_connect(rocket, "localhost", SYNC_DEFAULT_PORT);
#endif
   printf("row %f\n", row);
    for (int i = 0; i < rocketVariableCount; i++) {
         const struct sync_track* track = sync_get_track(rocket, rocketVariables[i].name);
         rocketVariables[i].value = sync_get_val(track, row);
    }
}

static int ctoy__oal_init(void)
{
   ctoy__oal_device = alcOpenDevice(NULL);
   if(!ctoy__oal_device)
   {
      printf("ERROR OpenAL: unable to create device\n");
      return 0;
   }

   // Create context
   ctoy__oal_context = alcCreateContext(ctoy__oal_device, NULL);
   if(!ctoy__oal_context)
   {
      printf("ERROR OpenAL: unable to create context\n");
      alcCloseDevice(ctoy__oal_device);
      return 0;
   }

   if(!alcMakeContextCurrent(ctoy__oal_context))
   {
      printf("ERROR OpenAL: unable to make current context\n");
      alcDestroyContext(ctoy__oal_context);
      alcCloseDevice(ctoy__oal_device);
      return 0;
   }

   // Generate source and buffer
   alGenSources(1, &source);
   alGenBuffers(1, &buffer);


     if (load_wav_file("song.wav", &buffer)) {
       // Successfully loaded the WAV file
       alSourcei(source, AL_BUFFER, buffer);
       alSourcePlay(source);
   }

   return 1;
}

static void ctoy__oal_destroy(void)
{
   alSourceStop(source);
   alDeleteSources(1, &source);
   alDeleteBuffers(1, &buffer);
   alcMakeContextCurrent(NULL);
   alcDestroyContext(ctoy__oal_context);
   alcCloseDevice(ctoy__oal_device);
}

static void ctoy__play_audio(void)
{
   // Play the audio source
   alSourcePlay(source);
}

int ctoy_get_chars(unsigned int dest[CTOY_CHAR_MAX])
{
   if (ctoy__char_count > 0)
      memcpy(dest, ctoy__char_queue, ctoy__char_count * sizeof(int));
   return ctoy__char_count;
}

int ctoy_get_pen_data(struct ctoy_pen_data dest[CTOY_PEN_DATA_MAX])
{
   if (ctoy__pen_data_count > 0)
      memcpy(dest, ctoy__pen_data_queue, ctoy__pen_data_count * sizeof(struct ctoy_pen_data));
   return ctoy__pen_data_count;
}

int ctoy_key_press(int key)
{
   return (ctoy__button[key][0] == 2);
}

int ctoy_key_release(int key)
{
   return (ctoy__button[key][0] == 1);
}

int ctoy_key_pressed(int key)
{
   return (ctoy__button[key][1] > 0);
}

int ctoy_mouse_button_press(int button)
{
   return (ctoy__mouse_button[button][0] == 2);
}

int ctoy_mouse_button_release(int button)
{
   return (ctoy__mouse_button[button][0] == 1);
}

int ctoy_mouse_button_pressed(int button)
{
   return (ctoy__mouse_button[button][1] > 0);
}

int ctoy_joystick_present(int joy)
{
   return glfwJoystickPresent(joy);
}

int ctoy_joystick_axis_count(int joy)
{
   return ctoy__joystick_axis_count[joy];
}

int ctoy_joystick_button_count(int joy)
{
   return ctoy__joystick_button_count[joy];
}

int ctoy_joystick_button_press(int joy, int button)
{
   return (ctoy__joystick_button[joy][button][0] > 0);
}

int ctoy_joystick_button_release(int joy, int button)
{
   return (ctoy__joystick_button[joy][button][0] < 0);
}

int ctoy_joystick_button_pressed(int joy, int button)
{
   return ctoy__joystick_button[joy][button][1];
}

float ctoy_joystick_axis(int joy, int axis)
{
   return ctoy__joystick_axis[joy][axis];
}

static GLenum comp_to_gl_format(int comp)
{
	switch (comp) {
	default:
	case 1: return GL_LUMINANCE;
	case 3: return GL_RGB;
	case 4: return GL_RGBA;
	}
}

void ctoy_render_image(struct m_image *image)
{
    if (image->width != ctoy__tex_width || image->height != ctoy__tex_height) {
        ctoy__setup_texture(image->width, image->height);
    }

    glBindTexture(GL_TEXTURE_2D, ctoy__texture);

    if (image->type == M_FLOAT) {
        m_image_float_to_srgb(&ctoy__buffer_ubyte, image);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, ctoy__buffer_ubyte.width, ctoy__buffer_ubyte.height, 0, comp_to_gl_format(image->comp), GL_UNSIGNED_BYTE, ctoy__buffer_ubyte.data);
    } else if (image->type == M_UBYTE) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, image->width, image->height, 0, comp_to_gl_format(image->comp), GL_UNSIGNED_BYTE, image->data);
    }

    glScissor(0, 0, ctoy__fb_width, ctoy__fb_height);
    glViewport(0, 0, ctoy__fb_width, ctoy__fb_height);
    ctoy__draw_texture(ctoy__texture);
}


void ctoy_swap_buffer(struct m_image *image)
{
#ifdef LIBDRAGON
    disp = display_lock();
    graphics_fill_screen(disp, 0);
    if (image) ctoy_render_image(image);
    display_show(disp);
#else
    if (image) ctoy_render_image(image);
    glfwSwapBuffers(ctoy__window);
#endif
}

double ctoy_get_time(void)
{
   return glfwGetTime();
}

void ctoy_window_title(const char *title)
{
   glfwSetWindowTitle(ctoy__window, title);
   sprintf(ctoy__title, "%s", title);
}

void ctoy_window_size(int width, int height)
{
   glfwSetWindowSize(ctoy__window, width, height);
   glfwGetFramebufferSize(ctoy__window, &ctoy__fb_width, &ctoy__fb_height);
   ctoy__win_width = width;
   ctoy__win_height = height;
}

void ctoy_window_fullscreen(int fullscreen)
{
   GLFWmonitor *monitor = NULL;
   int x = 0, y = 0;

   if (fullscreen) {
      ctoy__prev_win_width = ctoy__win_width;
      ctoy__prev_win_height = ctoy__win_height;
      glfwGetWindowPos(ctoy__window, &ctoy__prev_win_x, &ctoy__prev_win_y);
      monitor = ctoy__monitor_init();
   }
   else {
      ctoy__win_width = ctoy__prev_win_width;
      ctoy__win_height = ctoy__prev_win_height;
      x = ctoy__prev_win_x;
      y = ctoy__prev_win_y;
   }

   glfwSetWindowMonitor(
      ctoy__window, monitor,
      x, y, ctoy__win_width, ctoy__win_height, GLFW_DONT_CARE
      );
   glfwSwapInterval(1);
}

unsigned long ctoy_t(void)
{
   return ctoy__t;
}

int ctoy_window_width(void)
{
   return ctoy__win_width;
}

int ctoy_window_height(void)
{
   return ctoy__win_height;
}

int ctoy_frame_buffer_width(void)
{
   return ctoy__fb_width;
}

int ctoy_frame_buffer_height(void)
{
   return ctoy__fb_height;
}

int ctoy_width(void)
{
   return ctoy__tex_width;
}

int ctoy_height(void)
{
   return ctoy__tex_height;
}

float ctoy_mouse_x(void)
{
   return ctoy__mouse_x;
}

float ctoy_mouse_y(void)
{
   return ctoy__mouse_y;
}

float ctoy_scroll_x(void)
{
   return ctoy__scroll_x;
}

float ctoy_scroll_y(void)
{
   return ctoy__scroll_y;
}

void ctoy_register_memory(void *memory)
{
   ctoy__memory = memory;
}

void *ctoy_retrieve_memory(void)
{
   return ctoy__memory;
}

void ctoy_sleep(long sec, long nsec)
{
   struct timespec t;
   t.tv_sec = sec;
   t.tv_nsec = nsec;

#ifdef __EMSCRIPTEN__
   nanosleep(&t, NULL);
#else
   thrd_sleep(&t, NULL);
#endif
}

int ctoy_argc(void)
{
    return ctoy__argc;
}

char **ctoy_argv(void)
{
    return ctoy__argv;
}
