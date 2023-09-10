//
//  DataService.swift
//  SoMo
//
//  Created by George Hargreaves on 07/09/2023.
//

import Foundation

import Foundation

struct DataService {
    //this now calls upon the assets to get the level instances
    func getData() -> [Level] {
        return [Level(name: "Alevel",
                     summary: """
                                "Advanced level qualifications (known as A levels) are subject-based qualifications that can lead to university, further study, training, or work. You can normally study three or more A levels over two years. They're usually assessed by a series of examinations.
                                """,
                     imageName: "alevel",
                     subjects: [
                        Subject(name: "Biology",
                                summary: "Choose this course if you enjoy learning about life and living organisms and want to delve deeper into concepts that you have been introduced to at GCSE, from biochemistry and cell biology through to behaviour and ecology.",
                                longDescription: """
  "A Level Biology will offer you an exciting, challenging and stimulating area of study. Biology encompasses the cellular basis of living things, the transformation of energy that underlies the activities of life, and the genetic basis for inheritance in organisms. You will study the evolutionary relationships between organisms and the diversity of life on earth, to include microorganisms, plants, and animals. The structural and functional relationships studied in biology draw on the sciences of chemistry and physics for its foundations and applies the laws of these disciplines to living things. You will learn about advanced biology concepts and put these into practice through a wide variety of practical experiments.
  
  This will enable you to gain and develop the skills necessary to study biology or other sciences further as well as equipping you with a range of transferrable skills applicable to a number of subjects and careers.
  """,
                                imageName: "biology"),
                                
                            Subject(name: "Economics",
                                   summary: "A wide-ranging subject, highly regarded by employers and universities which relates to real-life situations and complements other subjects. You will study micro and macro economic issues affecting the world around us, learning to apply economic theories and understand key interrelationships.",
                                   longDescription: """
  Want to know what caused the global financial crisis? Interested in how governments use economic policy to respond to climate change? Shocked by the impact of COVID 19? Then this is the subject to study! Economics encompasses every aspect of our lives linking historical economic events to current and future problems. It develops an understanding of the world around us that is as valuable as it is interesting. Whether it is solving global inequality and poverty or considering how fiscal and monetary policy can stimulate economic growth, the subject looks to embrace real world issues.
  Economics has connections to many other subjects such as Politics, Geography, History, Business, Psychology and Statistics and is highly valued by universities.
  """,
                                    imageName: "economics"),
    
                         Subject(name: "Mathematics",
                                   summary: "By studying mathematics, you will find your future open to a wealth of possibilities. You will gain excellent applicable and transferable knowledge that is desired over a wide range of professional roles, whilst challenging and stimulating your brain.",
                                   longDescription: """
  This course will encourage you to develop your mathematical skills, improve your ability to think logically and enable you to determine solutions to a wide range of problems. If you enjoyed studying GCSE Maths, particularly the more algebraic topics, and would like to significantly improve your mathematical skills, then this would be an ideal subject for you. At this level, Mathematics is all about applying your knowledge to solve problems in real-life situations. You need to be logical so that you can follow a mathematical argument, and you need to be creative so that you can look for different ways to apply your skills to solve a problem.
  """,
                                 imageName: "maths"),
                        
                     ]
                    ),
                Level(name: "Tlevels",
                     summary: "T Levels are a Level 3 qualification that combine theory and practical learning with an industry placement of 45 days. They have been developed in collaboration with employers to ensure the content meets the needs of industry to prepare students for work. A T Level is equivalent to three A Levels.",
                     imageName: "tlevel",
                     subjects: [
                        Subject(name: "Health",
                                   summary: "Focused on the healthcare sector, this T Level provides essential knowledge on patient care, health protocols, and medical systems. Designed to groom students for technical roles in healthcare, apprenticeships, or further academic pursuits in health studies.",
                                   longDescription: """
          This qualification has been developed by experts and employers and reflects the needs of specialist occupations within the healthcare sector. This course will provide learners with the knowledge, skills and behaviours required to progress into a wide range of skilled employment options or higher-level technical study. Truro and Penwith College offer a range of higher-level university courses and apprenticeships that will allow T Level students to progress onto. The core content covers a breadth of subjects related to the health and science sector and includes core science concepts, health and wellbeing, safeguarding, person-centred care, good clinical practice and infection, prevention and control.
          """,
                                imageName: "health"),
                        
                        Subject(name: "Digital Production, Design and Development",
                            summary: "This T Level prepares students for the digital landscape by imparting skills in digital design, production techniques, and software tools. Aimed at fostering expertise for technical roles in the digital sector, higher education, or relevant apprenticeships.",
                            longDescription: """
                  This course has been developed in collaboration with employers and business to ensure that the content is relevant and meets industry standards. Building on your existing knowledge, this course will stretch and challenge your IT abilities, preparing you for work in the IT sector. With a specific focus on software design and development, you will spend a large amount of time programming and undertake a variety of projects, learning both theoretical and practical elements of project management. Lessons take place in specialist IT rooms with networked PCs. Your lecturers will be specialists in their field who will teach you through a variety of demonstrations, lectures and by helping you undertake a variety of practical tasks.
                  """,
                                imageName: "digitalProduction"),
                                
                     ]),
                Level(name: "Apprenticeships",
                     summary: "Truro and Penwith College offers quality apprenticeship programmes in 30 exciting job roles in partnership with Cornwall's top employers. Our continually expanding range of training is designed in partnership with employers to address the skills needed and career routes available at local businesses.",
                     imageName: "apprenticeship",
                     subjects: [
                        Subject(name: "Marketing Assistant L3",
                                   summary: "This Apprenticeship will provide a thorough, in-depth introduction to both traditional and digital marketing, and will give Apprentices the relevant experience they need to get started in the industry and gain permanent employment within any area of Marketing and Communications.",
                                   longDescription: """
          Recognised by the Chartered Institute of Marketing (CIM), the Level 3 Marketing Assistant Apprenticeship gives learners a thorough grounding in digital and traditional marketing. The programme provides both a well-recognised qualification and the experience needed to succeed in roles such as Marketing Assistant, Marketing Coordinator or Social Media Manager. Taught by the College’s industry-expert tutors, with current experience in the sector, Level 3 Marketing Assistant Apprentices gain the knowledge, competence, and confidence to contribute to the marketing activities of the business they work for, making a real difference to business success and developing their own skills along the way.
          """,
                                imageName: "marketing"),
                     ])
        ]
    }

                      
func getFileData() -> [Level] {
                          
    //Step 1 - we need to get file path to demodata.json
    if let url = Bundle.main.url(forResource: "DemoData", withExtension: "json") {
                              
        do {
            //Turn read the file and turn it into data
            //there could easily be an error thrown, this means it will alert you instead of failing silently
            let data = try Data(contentsOf: url)
                                  
            //Parse data into swift instances
            let decoder = JSONDecoder()
                                
            do {
                let subjects = try decoder.decode([Level].self, from: data)
                return subjects
            }
            catch {
                print("could'nt parse the JSON: \(error)")
                }
            }
        catch {
            print("Couldn't read the file: \(error)")
            
        }
    }
    return [Level]()
    
    }
}

