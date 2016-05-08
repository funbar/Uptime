
_uptime:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
//#include "types.h"
//#include <sys/sysinfo.h>


int main(int argc, char* argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	83 ec 30             	sub    $0x30,%esp
	int time    = (uptime()/100);
   a:	e8 08 04 00 00       	call   417 <uptime>
   f:	89 c1                	mov    %eax,%ecx
  11:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  16:	89 c8                	mov    %ecx,%eax
  18:	f7 ea                	imul   %edx
  1a:	c1 fa 05             	sar    $0x5,%edx
  1d:	89 c8                	mov    %ecx,%eax
  1f:	c1 f8 1f             	sar    $0x1f,%eax
  22:	29 c2                	sub    %eax,%edx
  24:	89 d0                	mov    %edx,%eax
  26:	89 44 24 2c          	mov    %eax,0x2c(%esp)

	int minutes = ((time % 3600) / 60); // 60 * 60
  2a:	8b 5c 24 2c          	mov    0x2c(%esp),%ebx
  2e:	ba c5 b3 a2 91       	mov    $0x91a2b3c5,%edx
  33:	89 d8                	mov    %ebx,%eax
  35:	f7 ea                	imul   %edx
  37:	8d 04 1a             	lea    (%edx,%ebx,1),%eax
  3a:	c1 f8 0b             	sar    $0xb,%eax
  3d:	89 c2                	mov    %eax,%edx
  3f:	89 d8                	mov    %ebx,%eax
  41:	c1 f8 1f             	sar    $0x1f,%eax
  44:	89 d1                	mov    %edx,%ecx
  46:	29 c1                	sub    %eax,%ecx
  48:	69 c1 10 0e 00 00    	imul   $0xe10,%ecx,%eax
  4e:	29 c3                	sub    %eax,%ebx
  50:	89 d9                	mov    %ebx,%ecx
  52:	ba 89 88 88 88       	mov    $0x88888889,%edx
  57:	89 c8                	mov    %ecx,%eax
  59:	f7 ea                	imul   %edx
  5b:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  5e:	c1 f8 05             	sar    $0x5,%eax
  61:	89 c2                	mov    %eax,%edx
  63:	89 c8                	mov    %ecx,%eax
  65:	c1 f8 1f             	sar    $0x1f,%eax
  68:	29 c2                	sub    %eax,%edx
  6a:	89 d0                	mov    %edx,%eax
  6c:	89 44 24 28          	mov    %eax,0x28(%esp)
	int hours   = ((time % 86400) / 3600); //24 * 3600
  70:	8b 5c 24 2c          	mov    0x2c(%esp),%ebx
  74:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
  79:	89 d8                	mov    %ebx,%eax
  7b:	f7 ea                	imul   %edx
  7d:	8d 04 1a             	lea    (%edx,%ebx,1),%eax
  80:	c1 f8 10             	sar    $0x10,%eax
  83:	89 c2                	mov    %eax,%edx
  85:	89 d8                	mov    %ebx,%eax
  87:	c1 f8 1f             	sar    $0x1f,%eax
  8a:	89 d1                	mov    %edx,%ecx
  8c:	29 c1                	sub    %eax,%ecx
  8e:	69 c1 80 51 01 00    	imul   $0x15180,%ecx,%eax
  94:	29 c3                	sub    %eax,%ebx
  96:	89 d9                	mov    %ebx,%ecx
  98:	ba c5 b3 a2 91       	mov    $0x91a2b3c5,%edx
  9d:	89 c8                	mov    %ecx,%eax
  9f:	f7 ea                	imul   %edx
  a1:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  a4:	c1 f8 0b             	sar    $0xb,%eax
  a7:	89 c2                	mov    %eax,%edx
  a9:	89 c8                	mov    %ecx,%eax
  ab:	c1 f8 1f             	sar    $0x1f,%eax
  ae:	29 c2                	sub    %eax,%edx
  b0:	89 d0                	mov    %edx,%eax
  b2:	89 44 24 24          	mov    %eax,0x24(%esp)
	int seconds = (time % 60); // 60
  b6:	8b 4c 24 2c          	mov    0x2c(%esp),%ecx
  ba:	ba 89 88 88 88       	mov    $0x88888889,%edx
  bf:	89 c8                	mov    %ecx,%eax
  c1:	f7 ea                	imul   %edx
  c3:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  c6:	c1 f8 05             	sar    $0x5,%eax
  c9:	89 c2                	mov    %eax,%edx
  cb:	89 c8                	mov    %ecx,%eax
  cd:	c1 f8 1f             	sar    $0x1f,%eax
  d0:	29 c2                	sub    %eax,%edx
  d2:	89 d0                	mov    %edx,%eax
  d4:	c1 e0 02             	shl    $0x2,%eax
  d7:	89 c2                	mov    %eax,%edx
  d9:	c1 e2 04             	shl    $0x4,%edx
  dc:	29 c2                	sub    %eax,%edx
  de:	89 c8                	mov    %ecx,%eax
  e0:	29 d0                	sub    %edx,%eax
  e2:	89 44 24 20          	mov    %eax,0x20(%esp)
	{
		minutes = 0;
		hours++;
	}
*/
	printf(1, "current uptime is %d:%d:%d \n", hours, minutes,seconds);
  e6:	8b 44 24 20          	mov    0x20(%esp),%eax
  ea:	89 44 24 10          	mov    %eax,0x10(%esp)
  ee:	8b 44 24 28          	mov    0x28(%esp),%eax
  f2:	89 44 24 0c          	mov    %eax,0xc(%esp)
  f6:	8b 44 24 24          	mov    0x24(%esp),%eax
  fa:	89 44 24 08          	mov    %eax,0x8(%esp)
  fe:	c7 44 24 04 cb 08 00 	movl   $0x8cb,0x4(%esp)
 105:	00 
 106:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 10d:	e8 ed 03 00 00       	call   4ff <printf>
	exit();
 112:	e8 68 02 00 00       	call   37f <exit>

00000117 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 117:	55                   	push   %ebp
 118:	89 e5                	mov    %esp,%ebp
 11a:	57                   	push   %edi
 11b:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 11c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 11f:	8b 55 10             	mov    0x10(%ebp),%edx
 122:	8b 45 0c             	mov    0xc(%ebp),%eax
 125:	89 cb                	mov    %ecx,%ebx
 127:	89 df                	mov    %ebx,%edi
 129:	89 d1                	mov    %edx,%ecx
 12b:	fc                   	cld    
 12c:	f3 aa                	rep stos %al,%es:(%edi)
 12e:	89 ca                	mov    %ecx,%edx
 130:	89 fb                	mov    %edi,%ebx
 132:	89 5d 08             	mov    %ebx,0x8(%ebp)
 135:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 138:	5b                   	pop    %ebx
 139:	5f                   	pop    %edi
 13a:	5d                   	pop    %ebp
 13b:	c3                   	ret    

0000013c <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 13c:	55                   	push   %ebp
 13d:	89 e5                	mov    %esp,%ebp
 13f:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 142:	8b 45 08             	mov    0x8(%ebp),%eax
 145:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 148:	90                   	nop
 149:	8b 45 08             	mov    0x8(%ebp),%eax
 14c:	8d 50 01             	lea    0x1(%eax),%edx
 14f:	89 55 08             	mov    %edx,0x8(%ebp)
 152:	8b 55 0c             	mov    0xc(%ebp),%edx
 155:	8d 4a 01             	lea    0x1(%edx),%ecx
 158:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 15b:	0f b6 12             	movzbl (%edx),%edx
 15e:	88 10                	mov    %dl,(%eax)
 160:	0f b6 00             	movzbl (%eax),%eax
 163:	84 c0                	test   %al,%al
 165:	75 e2                	jne    149 <strcpy+0xd>
    ;
  return os;
 167:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 16a:	c9                   	leave  
 16b:	c3                   	ret    

0000016c <strcmp>:

int
strcmp(const char *p, const char *q)
{
 16c:	55                   	push   %ebp
 16d:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 16f:	eb 08                	jmp    179 <strcmp+0xd>
    p++, q++;
 171:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 175:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 179:	8b 45 08             	mov    0x8(%ebp),%eax
 17c:	0f b6 00             	movzbl (%eax),%eax
 17f:	84 c0                	test   %al,%al
 181:	74 10                	je     193 <strcmp+0x27>
 183:	8b 45 08             	mov    0x8(%ebp),%eax
 186:	0f b6 10             	movzbl (%eax),%edx
 189:	8b 45 0c             	mov    0xc(%ebp),%eax
 18c:	0f b6 00             	movzbl (%eax),%eax
 18f:	38 c2                	cmp    %al,%dl
 191:	74 de                	je     171 <strcmp+0x5>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 193:	8b 45 08             	mov    0x8(%ebp),%eax
 196:	0f b6 00             	movzbl (%eax),%eax
 199:	0f b6 d0             	movzbl %al,%edx
 19c:	8b 45 0c             	mov    0xc(%ebp),%eax
 19f:	0f b6 00             	movzbl (%eax),%eax
 1a2:	0f b6 c0             	movzbl %al,%eax
 1a5:	29 c2                	sub    %eax,%edx
 1a7:	89 d0                	mov    %edx,%eax
}
 1a9:	5d                   	pop    %ebp
 1aa:	c3                   	ret    

000001ab <strlen>:

uint
strlen(char *s)
{
 1ab:	55                   	push   %ebp
 1ac:	89 e5                	mov    %esp,%ebp
 1ae:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 1b1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 1b8:	eb 04                	jmp    1be <strlen+0x13>
 1ba:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 1be:	8b 55 fc             	mov    -0x4(%ebp),%edx
 1c1:	8b 45 08             	mov    0x8(%ebp),%eax
 1c4:	01 d0                	add    %edx,%eax
 1c6:	0f b6 00             	movzbl (%eax),%eax
 1c9:	84 c0                	test   %al,%al
 1cb:	75 ed                	jne    1ba <strlen+0xf>
    ;
  return n;
 1cd:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 1d0:	c9                   	leave  
 1d1:	c3                   	ret    

000001d2 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1d2:	55                   	push   %ebp
 1d3:	89 e5                	mov    %esp,%ebp
 1d5:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 1d8:	8b 45 10             	mov    0x10(%ebp),%eax
 1db:	89 44 24 08          	mov    %eax,0x8(%esp)
 1df:	8b 45 0c             	mov    0xc(%ebp),%eax
 1e2:	89 44 24 04          	mov    %eax,0x4(%esp)
 1e6:	8b 45 08             	mov    0x8(%ebp),%eax
 1e9:	89 04 24             	mov    %eax,(%esp)
 1ec:	e8 26 ff ff ff       	call   117 <stosb>
  return dst;
 1f1:	8b 45 08             	mov    0x8(%ebp),%eax
}
 1f4:	c9                   	leave  
 1f5:	c3                   	ret    

000001f6 <strchr>:

char*
strchr(const char *s, char c)
{
 1f6:	55                   	push   %ebp
 1f7:	89 e5                	mov    %esp,%ebp
 1f9:	83 ec 04             	sub    $0x4,%esp
 1fc:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ff:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 202:	eb 14                	jmp    218 <strchr+0x22>
    if(*s == c)
 204:	8b 45 08             	mov    0x8(%ebp),%eax
 207:	0f b6 00             	movzbl (%eax),%eax
 20a:	3a 45 fc             	cmp    -0x4(%ebp),%al
 20d:	75 05                	jne    214 <strchr+0x1e>
      return (char*)s;
 20f:	8b 45 08             	mov    0x8(%ebp),%eax
 212:	eb 13                	jmp    227 <strchr+0x31>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 214:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 218:	8b 45 08             	mov    0x8(%ebp),%eax
 21b:	0f b6 00             	movzbl (%eax),%eax
 21e:	84 c0                	test   %al,%al
 220:	75 e2                	jne    204 <strchr+0xe>
    if(*s == c)
      return (char*)s;
  return 0;
 222:	b8 00 00 00 00       	mov    $0x0,%eax
}
 227:	c9                   	leave  
 228:	c3                   	ret    

00000229 <gets>:

char*
gets(char *buf, int max)
{
 229:	55                   	push   %ebp
 22a:	89 e5                	mov    %esp,%ebp
 22c:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 22f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 236:	eb 4c                	jmp    284 <gets+0x5b>
    cc = read(0, &c, 1);
 238:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 23f:	00 
 240:	8d 45 ef             	lea    -0x11(%ebp),%eax
 243:	89 44 24 04          	mov    %eax,0x4(%esp)
 247:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 24e:	e8 44 01 00 00       	call   397 <read>
 253:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(cc < 1)
 256:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 25a:	7f 02                	jg     25e <gets+0x35>
      break;
 25c:	eb 31                	jmp    28f <gets+0x66>
    buf[i++] = c;
 25e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 261:	8d 50 01             	lea    0x1(%eax),%edx
 264:	89 55 f4             	mov    %edx,-0xc(%ebp)
 267:	89 c2                	mov    %eax,%edx
 269:	8b 45 08             	mov    0x8(%ebp),%eax
 26c:	01 c2                	add    %eax,%edx
 26e:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 272:	88 02                	mov    %al,(%edx)
    if(c == '\n' || c == '\r')
 274:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 278:	3c 0a                	cmp    $0xa,%al
 27a:	74 13                	je     28f <gets+0x66>
 27c:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 280:	3c 0d                	cmp    $0xd,%al
 282:	74 0b                	je     28f <gets+0x66>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 284:	8b 45 f4             	mov    -0xc(%ebp),%eax
 287:	83 c0 01             	add    $0x1,%eax
 28a:	3b 45 0c             	cmp    0xc(%ebp),%eax
 28d:	7c a9                	jl     238 <gets+0xf>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 28f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 292:	8b 45 08             	mov    0x8(%ebp),%eax
 295:	01 d0                	add    %edx,%eax
 297:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 29a:	8b 45 08             	mov    0x8(%ebp),%eax
}
 29d:	c9                   	leave  
 29e:	c3                   	ret    

0000029f <stat>:

int
stat(char *n, struct stat *st)
{
 29f:	55                   	push   %ebp
 2a0:	89 e5                	mov    %esp,%ebp
 2a2:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2a5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2ac:	00 
 2ad:	8b 45 08             	mov    0x8(%ebp),%eax
 2b0:	89 04 24             	mov    %eax,(%esp)
 2b3:	e8 07 01 00 00       	call   3bf <open>
 2b8:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(fd < 0)
 2bb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 2bf:	79 07                	jns    2c8 <stat+0x29>
    return -1;
 2c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2c6:	eb 23                	jmp    2eb <stat+0x4c>
  r = fstat(fd, st);
 2c8:	8b 45 0c             	mov    0xc(%ebp),%eax
 2cb:	89 44 24 04          	mov    %eax,0x4(%esp)
 2cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2d2:	89 04 24             	mov    %eax,(%esp)
 2d5:	e8 fd 00 00 00       	call   3d7 <fstat>
 2da:	89 45 f0             	mov    %eax,-0x10(%ebp)
  close(fd);
 2dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2e0:	89 04 24             	mov    %eax,(%esp)
 2e3:	e8 bf 00 00 00       	call   3a7 <close>
  return r;
 2e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
 2eb:	c9                   	leave  
 2ec:	c3                   	ret    

000002ed <atoi>:

int
atoi(const char *s)
{
 2ed:	55                   	push   %ebp
 2ee:	89 e5                	mov    %esp,%ebp
 2f0:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 2f3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 2fa:	eb 25                	jmp    321 <atoi+0x34>
    n = n*10 + *s++ - '0';
 2fc:	8b 55 fc             	mov    -0x4(%ebp),%edx
 2ff:	89 d0                	mov    %edx,%eax
 301:	c1 e0 02             	shl    $0x2,%eax
 304:	01 d0                	add    %edx,%eax
 306:	01 c0                	add    %eax,%eax
 308:	89 c1                	mov    %eax,%ecx
 30a:	8b 45 08             	mov    0x8(%ebp),%eax
 30d:	8d 50 01             	lea    0x1(%eax),%edx
 310:	89 55 08             	mov    %edx,0x8(%ebp)
 313:	0f b6 00             	movzbl (%eax),%eax
 316:	0f be c0             	movsbl %al,%eax
 319:	01 c8                	add    %ecx,%eax
 31b:	83 e8 30             	sub    $0x30,%eax
 31e:	89 45 fc             	mov    %eax,-0x4(%ebp)
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 321:	8b 45 08             	mov    0x8(%ebp),%eax
 324:	0f b6 00             	movzbl (%eax),%eax
 327:	3c 2f                	cmp    $0x2f,%al
 329:	7e 0a                	jle    335 <atoi+0x48>
 32b:	8b 45 08             	mov    0x8(%ebp),%eax
 32e:	0f b6 00             	movzbl (%eax),%eax
 331:	3c 39                	cmp    $0x39,%al
 333:	7e c7                	jle    2fc <atoi+0xf>
    n = n*10 + *s++ - '0';
  return n;
 335:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 338:	c9                   	leave  
 339:	c3                   	ret    

0000033a <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 33a:	55                   	push   %ebp
 33b:	89 e5                	mov    %esp,%ebp
 33d:	83 ec 10             	sub    $0x10,%esp
  char *dst, *src;
  
  dst = vdst;
 340:	8b 45 08             	mov    0x8(%ebp),%eax
 343:	89 45 fc             	mov    %eax,-0x4(%ebp)
  src = vsrc;
 346:	8b 45 0c             	mov    0xc(%ebp),%eax
 349:	89 45 f8             	mov    %eax,-0x8(%ebp)
  while(n-- > 0)
 34c:	eb 17                	jmp    365 <memmove+0x2b>
    *dst++ = *src++;
 34e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 351:	8d 50 01             	lea    0x1(%eax),%edx
 354:	89 55 fc             	mov    %edx,-0x4(%ebp)
 357:	8b 55 f8             	mov    -0x8(%ebp),%edx
 35a:	8d 4a 01             	lea    0x1(%edx),%ecx
 35d:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 360:	0f b6 12             	movzbl (%edx),%edx
 363:	88 10                	mov    %dl,(%eax)
{
  char *dst, *src;
  
  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 365:	8b 45 10             	mov    0x10(%ebp),%eax
 368:	8d 50 ff             	lea    -0x1(%eax),%edx
 36b:	89 55 10             	mov    %edx,0x10(%ebp)
 36e:	85 c0                	test   %eax,%eax
 370:	7f dc                	jg     34e <memmove+0x14>
    *dst++ = *src++;
  return vdst;
 372:	8b 45 08             	mov    0x8(%ebp),%eax
}
 375:	c9                   	leave  
 376:	c3                   	ret    

00000377 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 377:	b8 01 00 00 00       	mov    $0x1,%eax
 37c:	cd 40                	int    $0x40
 37e:	c3                   	ret    

0000037f <exit>:
SYSCALL(exit)
 37f:	b8 02 00 00 00       	mov    $0x2,%eax
 384:	cd 40                	int    $0x40
 386:	c3                   	ret    

00000387 <wait>:
SYSCALL(wait)
 387:	b8 03 00 00 00       	mov    $0x3,%eax
 38c:	cd 40                	int    $0x40
 38e:	c3                   	ret    

0000038f <pipe>:
SYSCALL(pipe)
 38f:	b8 04 00 00 00       	mov    $0x4,%eax
 394:	cd 40                	int    $0x40
 396:	c3                   	ret    

00000397 <read>:
SYSCALL(read)
 397:	b8 05 00 00 00       	mov    $0x5,%eax
 39c:	cd 40                	int    $0x40
 39e:	c3                   	ret    

0000039f <write>:
SYSCALL(write)
 39f:	b8 10 00 00 00       	mov    $0x10,%eax
 3a4:	cd 40                	int    $0x40
 3a6:	c3                   	ret    

000003a7 <close>:
SYSCALL(close)
 3a7:	b8 15 00 00 00       	mov    $0x15,%eax
 3ac:	cd 40                	int    $0x40
 3ae:	c3                   	ret    

000003af <kill>:
SYSCALL(kill)
 3af:	b8 06 00 00 00       	mov    $0x6,%eax
 3b4:	cd 40                	int    $0x40
 3b6:	c3                   	ret    

000003b7 <exec>:
SYSCALL(exec)
 3b7:	b8 07 00 00 00       	mov    $0x7,%eax
 3bc:	cd 40                	int    $0x40
 3be:	c3                   	ret    

000003bf <open>:
SYSCALL(open)
 3bf:	b8 0f 00 00 00       	mov    $0xf,%eax
 3c4:	cd 40                	int    $0x40
 3c6:	c3                   	ret    

000003c7 <mknod>:
SYSCALL(mknod)
 3c7:	b8 11 00 00 00       	mov    $0x11,%eax
 3cc:	cd 40                	int    $0x40
 3ce:	c3                   	ret    

000003cf <unlink>:
SYSCALL(unlink)
 3cf:	b8 12 00 00 00       	mov    $0x12,%eax
 3d4:	cd 40                	int    $0x40
 3d6:	c3                   	ret    

000003d7 <fstat>:
SYSCALL(fstat)
 3d7:	b8 08 00 00 00       	mov    $0x8,%eax
 3dc:	cd 40                	int    $0x40
 3de:	c3                   	ret    

000003df <link>:
SYSCALL(link)
 3df:	b8 13 00 00 00       	mov    $0x13,%eax
 3e4:	cd 40                	int    $0x40
 3e6:	c3                   	ret    

000003e7 <mkdir>:
SYSCALL(mkdir)
 3e7:	b8 14 00 00 00       	mov    $0x14,%eax
 3ec:	cd 40                	int    $0x40
 3ee:	c3                   	ret    

000003ef <chdir>:
SYSCALL(chdir)
 3ef:	b8 09 00 00 00       	mov    $0x9,%eax
 3f4:	cd 40                	int    $0x40
 3f6:	c3                   	ret    

000003f7 <dup>:
SYSCALL(dup)
 3f7:	b8 0a 00 00 00       	mov    $0xa,%eax
 3fc:	cd 40                	int    $0x40
 3fe:	c3                   	ret    

000003ff <getpid>:
SYSCALL(getpid)
 3ff:	b8 0b 00 00 00       	mov    $0xb,%eax
 404:	cd 40                	int    $0x40
 406:	c3                   	ret    

00000407 <sbrk>:
SYSCALL(sbrk)
 407:	b8 0c 00 00 00       	mov    $0xc,%eax
 40c:	cd 40                	int    $0x40
 40e:	c3                   	ret    

0000040f <sleep>:
SYSCALL(sleep)
 40f:	b8 0d 00 00 00       	mov    $0xd,%eax
 414:	cd 40                	int    $0x40
 416:	c3                   	ret    

00000417 <uptime>:
SYSCALL(uptime)
 417:	b8 0e 00 00 00       	mov    $0xe,%eax
 41c:	cd 40                	int    $0x40
 41e:	c3                   	ret    

0000041f <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 41f:	55                   	push   %ebp
 420:	89 e5                	mov    %esp,%ebp
 422:	83 ec 18             	sub    $0x18,%esp
 425:	8b 45 0c             	mov    0xc(%ebp),%eax
 428:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 42b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 432:	00 
 433:	8d 45 f4             	lea    -0xc(%ebp),%eax
 436:	89 44 24 04          	mov    %eax,0x4(%esp)
 43a:	8b 45 08             	mov    0x8(%ebp),%eax
 43d:	89 04 24             	mov    %eax,(%esp)
 440:	e8 5a ff ff ff       	call   39f <write>
}
 445:	c9                   	leave  
 446:	c3                   	ret    

00000447 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 447:	55                   	push   %ebp
 448:	89 e5                	mov    %esp,%ebp
 44a:	56                   	push   %esi
 44b:	53                   	push   %ebx
 44c:	83 ec 30             	sub    $0x30,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 44f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 456:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 45a:	74 17                	je     473 <printint+0x2c>
 45c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 460:	79 11                	jns    473 <printint+0x2c>
    neg = 1;
 462:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 469:	8b 45 0c             	mov    0xc(%ebp),%eax
 46c:	f7 d8                	neg    %eax
 46e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 471:	eb 06                	jmp    479 <printint+0x32>
  } else {
    x = xx;
 473:	8b 45 0c             	mov    0xc(%ebp),%eax
 476:	89 45 ec             	mov    %eax,-0x14(%ebp)
  }

  i = 0;
 479:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  do{
    buf[i++] = digits[x % base];
 480:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 483:	8d 41 01             	lea    0x1(%ecx),%eax
 486:	89 45 f4             	mov    %eax,-0xc(%ebp)
 489:	8b 5d 10             	mov    0x10(%ebp),%ebx
 48c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 48f:	ba 00 00 00 00       	mov    $0x0,%edx
 494:	f7 f3                	div    %ebx
 496:	89 d0                	mov    %edx,%eax
 498:	0f b6 80 34 0b 00 00 	movzbl 0xb34(%eax),%eax
 49f:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
  }while((x /= base) != 0);
 4a3:	8b 75 10             	mov    0x10(%ebp),%esi
 4a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
 4a9:	ba 00 00 00 00       	mov    $0x0,%edx
 4ae:	f7 f6                	div    %esi
 4b0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 4b3:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 4b7:	75 c7                	jne    480 <printint+0x39>
  if(neg)
 4b9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 4bd:	74 10                	je     4cf <printint+0x88>
    buf[i++] = '-';
 4bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4c2:	8d 50 01             	lea    0x1(%eax),%edx
 4c5:	89 55 f4             	mov    %edx,-0xc(%ebp)
 4c8:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)

  while(--i >= 0)
 4cd:	eb 1f                	jmp    4ee <printint+0xa7>
 4cf:	eb 1d                	jmp    4ee <printint+0xa7>
    putc(fd, buf[i]);
 4d1:	8d 55 dc             	lea    -0x24(%ebp),%edx
 4d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4d7:	01 d0                	add    %edx,%eax
 4d9:	0f b6 00             	movzbl (%eax),%eax
 4dc:	0f be c0             	movsbl %al,%eax
 4df:	89 44 24 04          	mov    %eax,0x4(%esp)
 4e3:	8b 45 08             	mov    0x8(%ebp),%eax
 4e6:	89 04 24             	mov    %eax,(%esp)
 4e9:	e8 31 ff ff ff       	call   41f <putc>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 4ee:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 4f2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 4f6:	79 d9                	jns    4d1 <printint+0x8a>
    putc(fd, buf[i]);
}
 4f8:	83 c4 30             	add    $0x30,%esp
 4fb:	5b                   	pop    %ebx
 4fc:	5e                   	pop    %esi
 4fd:	5d                   	pop    %ebp
 4fe:	c3                   	ret    

000004ff <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4ff:	55                   	push   %ebp
 500:	89 e5                	mov    %esp,%ebp
 502:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 505:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 50c:	8d 45 0c             	lea    0xc(%ebp),%eax
 50f:	83 c0 04             	add    $0x4,%eax
 512:	89 45 e8             	mov    %eax,-0x18(%ebp)
  for(i = 0; fmt[i]; i++){
 515:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 51c:	e9 7c 01 00 00       	jmp    69d <printf+0x19e>
    c = fmt[i] & 0xff;
 521:	8b 55 0c             	mov    0xc(%ebp),%edx
 524:	8b 45 f0             	mov    -0x10(%ebp),%eax
 527:	01 d0                	add    %edx,%eax
 529:	0f b6 00             	movzbl (%eax),%eax
 52c:	0f be c0             	movsbl %al,%eax
 52f:	25 ff 00 00 00       	and    $0xff,%eax
 534:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if(state == 0){
 537:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 53b:	75 2c                	jne    569 <printf+0x6a>
      if(c == '%'){
 53d:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 541:	75 0c                	jne    54f <printf+0x50>
        state = '%';
 543:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%ebp)
 54a:	e9 4a 01 00 00       	jmp    699 <printf+0x19a>
      } else {
        putc(fd, c);
 54f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 552:	0f be c0             	movsbl %al,%eax
 555:	89 44 24 04          	mov    %eax,0x4(%esp)
 559:	8b 45 08             	mov    0x8(%ebp),%eax
 55c:	89 04 24             	mov    %eax,(%esp)
 55f:	e8 bb fe ff ff       	call   41f <putc>
 564:	e9 30 01 00 00       	jmp    699 <printf+0x19a>
      }
    } else if(state == '%'){
 569:	83 7d ec 25          	cmpl   $0x25,-0x14(%ebp)
 56d:	0f 85 26 01 00 00    	jne    699 <printf+0x19a>
      if(c == 'd'){
 573:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
 577:	75 2d                	jne    5a6 <printf+0xa7>
        printint(fd, *ap, 10, 1);
 579:	8b 45 e8             	mov    -0x18(%ebp),%eax
 57c:	8b 00                	mov    (%eax),%eax
 57e:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 585:	00 
 586:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 58d:	00 
 58e:	89 44 24 04          	mov    %eax,0x4(%esp)
 592:	8b 45 08             	mov    0x8(%ebp),%eax
 595:	89 04 24             	mov    %eax,(%esp)
 598:	e8 aa fe ff ff       	call   447 <printint>
        ap++;
 59d:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 5a1:	e9 ec 00 00 00       	jmp    692 <printf+0x193>
      } else if(c == 'x' || c == 'p'){
 5a6:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
 5aa:	74 06                	je     5b2 <printf+0xb3>
 5ac:	83 7d e4 70          	cmpl   $0x70,-0x1c(%ebp)
 5b0:	75 2d                	jne    5df <printf+0xe0>
        printint(fd, *ap, 16, 0);
 5b2:	8b 45 e8             	mov    -0x18(%ebp),%eax
 5b5:	8b 00                	mov    (%eax),%eax
 5b7:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 5be:	00 
 5bf:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 5c6:	00 
 5c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 5cb:	8b 45 08             	mov    0x8(%ebp),%eax
 5ce:	89 04 24             	mov    %eax,(%esp)
 5d1:	e8 71 fe ff ff       	call   447 <printint>
        ap++;
 5d6:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 5da:	e9 b3 00 00 00       	jmp    692 <printf+0x193>
      } else if(c == 's'){
 5df:	83 7d e4 73          	cmpl   $0x73,-0x1c(%ebp)
 5e3:	75 45                	jne    62a <printf+0x12b>
        s = (char*)*ap;
 5e5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 5e8:	8b 00                	mov    (%eax),%eax
 5ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
        ap++;
 5ed:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
        if(s == 0)
 5f1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 5f5:	75 09                	jne    600 <printf+0x101>
          s = "(null)";
 5f7:	c7 45 f4 e8 08 00 00 	movl   $0x8e8,-0xc(%ebp)
        while(*s != 0){
 5fe:	eb 1e                	jmp    61e <printf+0x11f>
 600:	eb 1c                	jmp    61e <printf+0x11f>
          putc(fd, *s);
 602:	8b 45 f4             	mov    -0xc(%ebp),%eax
 605:	0f b6 00             	movzbl (%eax),%eax
 608:	0f be c0             	movsbl %al,%eax
 60b:	89 44 24 04          	mov    %eax,0x4(%esp)
 60f:	8b 45 08             	mov    0x8(%ebp),%eax
 612:	89 04 24             	mov    %eax,(%esp)
 615:	e8 05 fe ff ff       	call   41f <putc>
          s++;
 61a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 61e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 621:	0f b6 00             	movzbl (%eax),%eax
 624:	84 c0                	test   %al,%al
 626:	75 da                	jne    602 <printf+0x103>
 628:	eb 68                	jmp    692 <printf+0x193>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 62a:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
 62e:	75 1d                	jne    64d <printf+0x14e>
        putc(fd, *ap);
 630:	8b 45 e8             	mov    -0x18(%ebp),%eax
 633:	8b 00                	mov    (%eax),%eax
 635:	0f be c0             	movsbl %al,%eax
 638:	89 44 24 04          	mov    %eax,0x4(%esp)
 63c:	8b 45 08             	mov    0x8(%ebp),%eax
 63f:	89 04 24             	mov    %eax,(%esp)
 642:	e8 d8 fd ff ff       	call   41f <putc>
        ap++;
 647:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 64b:	eb 45                	jmp    692 <printf+0x193>
      } else if(c == '%'){
 64d:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 651:	75 17                	jne    66a <printf+0x16b>
        putc(fd, c);
 653:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 656:	0f be c0             	movsbl %al,%eax
 659:	89 44 24 04          	mov    %eax,0x4(%esp)
 65d:	8b 45 08             	mov    0x8(%ebp),%eax
 660:	89 04 24             	mov    %eax,(%esp)
 663:	e8 b7 fd ff ff       	call   41f <putc>
 668:	eb 28                	jmp    692 <printf+0x193>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 66a:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 671:	00 
 672:	8b 45 08             	mov    0x8(%ebp),%eax
 675:	89 04 24             	mov    %eax,(%esp)
 678:	e8 a2 fd ff ff       	call   41f <putc>
        putc(fd, c);
 67d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 680:	0f be c0             	movsbl %al,%eax
 683:	89 44 24 04          	mov    %eax,0x4(%esp)
 687:	8b 45 08             	mov    0x8(%ebp),%eax
 68a:	89 04 24             	mov    %eax,(%esp)
 68d:	e8 8d fd ff ff       	call   41f <putc>
      }
      state = 0;
 692:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 699:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 69d:	8b 55 0c             	mov    0xc(%ebp),%edx
 6a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 6a3:	01 d0                	add    %edx,%eax
 6a5:	0f b6 00             	movzbl (%eax),%eax
 6a8:	84 c0                	test   %al,%al
 6aa:	0f 85 71 fe ff ff    	jne    521 <printf+0x22>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6b0:	c9                   	leave  
 6b1:	c3                   	ret    

000006b2 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6b2:	55                   	push   %ebp
 6b3:	89 e5                	mov    %esp,%ebp
 6b5:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6b8:	8b 45 08             	mov    0x8(%ebp),%eax
 6bb:	83 e8 08             	sub    $0x8,%eax
 6be:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c1:	a1 50 0b 00 00       	mov    0xb50,%eax
 6c6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 6c9:	eb 24                	jmp    6ef <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6cb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6ce:	8b 00                	mov    (%eax),%eax
 6d0:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6d3:	77 12                	ja     6e7 <free+0x35>
 6d5:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6d8:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6db:	77 24                	ja     701 <free+0x4f>
 6dd:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6e0:	8b 00                	mov    (%eax),%eax
 6e2:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 6e5:	77 1a                	ja     701 <free+0x4f>
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e7:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6ea:	8b 00                	mov    (%eax),%eax
 6ec:	89 45 fc             	mov    %eax,-0x4(%ebp)
 6ef:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6f2:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6f5:	76 d4                	jbe    6cb <free+0x19>
 6f7:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6fa:	8b 00                	mov    (%eax),%eax
 6fc:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 6ff:	76 ca                	jbe    6cb <free+0x19>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
 701:	8b 45 f8             	mov    -0x8(%ebp),%eax
 704:	8b 40 04             	mov    0x4(%eax),%eax
 707:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 70e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 711:	01 c2                	add    %eax,%edx
 713:	8b 45 fc             	mov    -0x4(%ebp),%eax
 716:	8b 00                	mov    (%eax),%eax
 718:	39 c2                	cmp    %eax,%edx
 71a:	75 24                	jne    740 <free+0x8e>
    bp->s.size += p->s.ptr->s.size;
 71c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 71f:	8b 50 04             	mov    0x4(%eax),%edx
 722:	8b 45 fc             	mov    -0x4(%ebp),%eax
 725:	8b 00                	mov    (%eax),%eax
 727:	8b 40 04             	mov    0x4(%eax),%eax
 72a:	01 c2                	add    %eax,%edx
 72c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 72f:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 732:	8b 45 fc             	mov    -0x4(%ebp),%eax
 735:	8b 00                	mov    (%eax),%eax
 737:	8b 10                	mov    (%eax),%edx
 739:	8b 45 f8             	mov    -0x8(%ebp),%eax
 73c:	89 10                	mov    %edx,(%eax)
 73e:	eb 0a                	jmp    74a <free+0x98>
  } else
    bp->s.ptr = p->s.ptr;
 740:	8b 45 fc             	mov    -0x4(%ebp),%eax
 743:	8b 10                	mov    (%eax),%edx
 745:	8b 45 f8             	mov    -0x8(%ebp),%eax
 748:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 74a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 74d:	8b 40 04             	mov    0x4(%eax),%eax
 750:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 757:	8b 45 fc             	mov    -0x4(%ebp),%eax
 75a:	01 d0                	add    %edx,%eax
 75c:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 75f:	75 20                	jne    781 <free+0xcf>
    p->s.size += bp->s.size;
 761:	8b 45 fc             	mov    -0x4(%ebp),%eax
 764:	8b 50 04             	mov    0x4(%eax),%edx
 767:	8b 45 f8             	mov    -0x8(%ebp),%eax
 76a:	8b 40 04             	mov    0x4(%eax),%eax
 76d:	01 c2                	add    %eax,%edx
 76f:	8b 45 fc             	mov    -0x4(%ebp),%eax
 772:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 775:	8b 45 f8             	mov    -0x8(%ebp),%eax
 778:	8b 10                	mov    (%eax),%edx
 77a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 77d:	89 10                	mov    %edx,(%eax)
 77f:	eb 08                	jmp    789 <free+0xd7>
  } else
    p->s.ptr = bp;
 781:	8b 45 fc             	mov    -0x4(%ebp),%eax
 784:	8b 55 f8             	mov    -0x8(%ebp),%edx
 787:	89 10                	mov    %edx,(%eax)
  freep = p;
 789:	8b 45 fc             	mov    -0x4(%ebp),%eax
 78c:	a3 50 0b 00 00       	mov    %eax,0xb50
}
 791:	c9                   	leave  
 792:	c3                   	ret    

00000793 <morecore>:

static Header*
morecore(uint nu)
{
 793:	55                   	push   %ebp
 794:	89 e5                	mov    %esp,%ebp
 796:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 799:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 7a0:	77 07                	ja     7a9 <morecore+0x16>
    nu = 4096;
 7a2:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 7a9:	8b 45 08             	mov    0x8(%ebp),%eax
 7ac:	c1 e0 03             	shl    $0x3,%eax
 7af:	89 04 24             	mov    %eax,(%esp)
 7b2:	e8 50 fc ff ff       	call   407 <sbrk>
 7b7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(p == (char*)-1)
 7ba:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 7be:	75 07                	jne    7c7 <morecore+0x34>
    return 0;
 7c0:	b8 00 00 00 00       	mov    $0x0,%eax
 7c5:	eb 22                	jmp    7e9 <morecore+0x56>
  hp = (Header*)p;
 7c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7ca:	89 45 f0             	mov    %eax,-0x10(%ebp)
  hp->s.size = nu;
 7cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7d0:	8b 55 08             	mov    0x8(%ebp),%edx
 7d3:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 7d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7d9:	83 c0 08             	add    $0x8,%eax
 7dc:	89 04 24             	mov    %eax,(%esp)
 7df:	e8 ce fe ff ff       	call   6b2 <free>
  return freep;
 7e4:	a1 50 0b 00 00       	mov    0xb50,%eax
}
 7e9:	c9                   	leave  
 7ea:	c3                   	ret    

000007eb <malloc>:

void*
malloc(uint nbytes)
{
 7eb:	55                   	push   %ebp
 7ec:	89 e5                	mov    %esp,%ebp
 7ee:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f1:	8b 45 08             	mov    0x8(%ebp),%eax
 7f4:	83 c0 07             	add    $0x7,%eax
 7f7:	c1 e8 03             	shr    $0x3,%eax
 7fa:	83 c0 01             	add    $0x1,%eax
 7fd:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if((prevp = freep) == 0){
 800:	a1 50 0b 00 00       	mov    0xb50,%eax
 805:	89 45 f0             	mov    %eax,-0x10(%ebp)
 808:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80c:	75 23                	jne    831 <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 80e:	c7 45 f0 48 0b 00 00 	movl   $0xb48,-0x10(%ebp)
 815:	8b 45 f0             	mov    -0x10(%ebp),%eax
 818:	a3 50 0b 00 00       	mov    %eax,0xb50
 81d:	a1 50 0b 00 00       	mov    0xb50,%eax
 822:	a3 48 0b 00 00       	mov    %eax,0xb48
    base.s.size = 0;
 827:	c7 05 4c 0b 00 00 00 	movl   $0x0,0xb4c
 82e:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 831:	8b 45 f0             	mov    -0x10(%ebp),%eax
 834:	8b 00                	mov    (%eax),%eax
 836:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(p->s.size >= nunits){
 839:	8b 45 f4             	mov    -0xc(%ebp),%eax
 83c:	8b 40 04             	mov    0x4(%eax),%eax
 83f:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 842:	72 4d                	jb     891 <malloc+0xa6>
      if(p->s.size == nunits)
 844:	8b 45 f4             	mov    -0xc(%ebp),%eax
 847:	8b 40 04             	mov    0x4(%eax),%eax
 84a:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 84d:	75 0c                	jne    85b <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 84f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 852:	8b 10                	mov    (%eax),%edx
 854:	8b 45 f0             	mov    -0x10(%ebp),%eax
 857:	89 10                	mov    %edx,(%eax)
 859:	eb 26                	jmp    881 <malloc+0x96>
      else {
        p->s.size -= nunits;
 85b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 85e:	8b 40 04             	mov    0x4(%eax),%eax
 861:	2b 45 ec             	sub    -0x14(%ebp),%eax
 864:	89 c2                	mov    %eax,%edx
 866:	8b 45 f4             	mov    -0xc(%ebp),%eax
 869:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 86c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 86f:	8b 40 04             	mov    0x4(%eax),%eax
 872:	c1 e0 03             	shl    $0x3,%eax
 875:	01 45 f4             	add    %eax,-0xc(%ebp)
        p->s.size = nunits;
 878:	8b 45 f4             	mov    -0xc(%ebp),%eax
 87b:	8b 55 ec             	mov    -0x14(%ebp),%edx
 87e:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 881:	8b 45 f0             	mov    -0x10(%ebp),%eax
 884:	a3 50 0b 00 00       	mov    %eax,0xb50
      return (void*)(p + 1);
 889:	8b 45 f4             	mov    -0xc(%ebp),%eax
 88c:	83 c0 08             	add    $0x8,%eax
 88f:	eb 38                	jmp    8c9 <malloc+0xde>
    }
    if(p == freep)
 891:	a1 50 0b 00 00       	mov    0xb50,%eax
 896:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 899:	75 1b                	jne    8b6 <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 89b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 89e:	89 04 24             	mov    %eax,(%esp)
 8a1:	e8 ed fe ff ff       	call   793 <morecore>
 8a6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8a9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8ad:	75 07                	jne    8b6 <malloc+0xcb>
        return 0;
 8af:	b8 00 00 00 00       	mov    $0x0,%eax
 8b4:	eb 13                	jmp    8c9 <malloc+0xde>
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8b9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8bf:	8b 00                	mov    (%eax),%eax
 8c1:	89 45 f4             	mov    %eax,-0xc(%ebp)
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
 8c4:	e9 70 ff ff ff       	jmp    839 <malloc+0x4e>
}
 8c9:	c9                   	leave  
 8ca:	c3                   	ret    
