import Typewriter from "typewriter-effect";
import introImg from "../assesets/image/appintro1.jpg"
import introImg2 from "../assesets/image/rsz_1appintro2.jpg"
import introImg3 from "../assesets/image/appintro3.jpg"

export default function IntroContent() {
    return (
        <section id="homeContent" className="home--content">
            <div className="home--content--display--box">
                <div className="home--content-display">
                    <p className="section--title">Hey I am April !</p>
                    <h1 className="content--section--title">
                        <span className="content--section--title--color">
                            Software Engineer
                        </span>{" "}
                        <br />
                        Full Stack Developer
                    </h1>
                    <p className="content--section--description">
                        There are 10 types of people in the world
                        <br /> one that know binary, one doesn't
                    </p>
                    <div className="intro--conent" >
                        <Typewriter
                            options={{
                                strings: [
                                    'I like math and logics, helps build up brain!',
                                    'Problem solving is the main fun of coding',
                                    'I enjoy building cool apps, relistic or irrelistic',
                                ],
                                autoStart: true,
                                loop: true,
                                deleteSpeed: 10,
                            }}
                        />
                    </div>
                </div>
                <div className="btn--group">
                    <button className="btn btn-primary">More About Me</button>
                    <button className="btn btn-primary">Contact Me Now</button>
                </div>
            </div>
                <div className="content--section--image order-1 order-lg-2 h-100" >
                {/* <img src={introImg} alt="Intro1" /> */}
                <img src={introImg2} alt="Intro2" />
                {/* <img src={introImg3} alt="Intro3" /> */}
            </div>
        </section>
    )
}