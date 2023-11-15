(assert (age))
(assert (weight))
(assert (healthCondition))
(assert (dietaryPreferences))
(assert (physicalActivity))
(assert (goal))
(assert (caloricDeficit))

(defrule p1
      ?p <- (start)
      =>
      (printout t "Is the user 18 years or older?")
      (assert (age (read)))
      (retract ?p))

(defrule rule1
      (age no)
      =>
      (printout t "I'm sorry, but it seems that our program is designed for users who are 18 years or older. 
                  Proper guidance is essential for individuals below this age. 
                  However, it's never too early to start thinking about a healthy lifestyle. 
                  Consider involving your parents or guardians in discussions about nutrition and exercise. 
                  If you have any specific questions or concerns, 
                  feel free to ask for general advice on maintaining a healthy lifestyle." crlf))

(defrule p2
      (age yes)
      =>
      (printout t "Is the user willing to disclose their weight?")
      (assert (weight (read))))

(defrule rule2
      (weight no)
      =>
      (printout t "I completely understand that weight can be a personal and sensitive topic. 
                  While knowing your weight can help tailor more accurate recommendations, it's not mandatory. 
                  Instead, let's focus on general advice for weight management:
                        1. Prioritize a balanced and nutritious diet.
                        2. Incorporate regular physical activity into your routine.
                        3. Pay attention to portion sizes and practice mindful eating.
                        4. Stay hydrated and get adequate sleep for overall well-being.
                  Remember, these are general guidelines, and if you ever feel comfortable sharing more details 
                  or have specific questions, feel free to ask. 
                  Your journey to a healthier lifestyle is unique, 
                  and I'm here to support you every step of the way!" crlf))

(defrule p3
      (age yes)
      (weight yes)
      =>
      (printout t "Does the user have any existing health conditions?")
      (assert (healthCondition (read))))

(defrule rule3
      (age yes)
      (weight yes)
      (healthCondition yes)
      =>
      (printout t "Your health is important to us. Please provide details about any existing health conditions you may have. 
                  This information will help us tailor our recommendations to suit your specific needs.
                  For example, you can mention conditions such as diabetes, hypertension, allergies, 
                  or any other relevant health issues. If you don't have any existing health conditions, you can simply let us know.
                  Remember, your privacy is our priority, and all the information you share will be kept confidential. 
                  Providing accurate details will enable us to create a personalized plan that aligns with your health goals.
                  Thank you for helping us better understand your health profile!" crlf))

(defrule p4
      (age yes)
      (weight yes)
      (healthCondition no)
      =>
      (printout t "Does the user have specific dietary preferences or restrictions?")
      (assert (dietaryPreferences (read))))


(defrule rule4
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences yes)
      =>
      (printout t "Excited to help you on your wellness journey! 
                  Let's create a personalized meal plan. Share any dietary preferences or restrictions, 
                  and we'll craft delicious meals emphasizing whole foods, balanced macros, 
                  and portion control. Your journey to a healthier you starts with nourishing, enjoyable meals!" crlf))

(defrule p5
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences no)
      =>
      (printout t "Is the user currently engaged in regular physical activity?")
      (assert (physicalActivity (read))))

(defrule p6
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences no)
      (physicalActivity yes)
      =>
      (printout t "Is the user's goal weight loss?")
      (assert (goal (read))))

(defrule rule5
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences no)
      (physicalActivity no)
      =>
      (printout t "Embarking on your fitness journey is an exciting step towards a healthier you! 
                  We recommend starting with light exercises to gradually build your stamina and strength. 
                  Consider activities like brisk walking, gentle yoga, or swimming to ease into a more active lifestyle. 
                  Remember, consistency is key, and it's important to listen to your body. 
                  As you become more comfortable, you can gradually increase the intensity of your workouts. 
                  If you have any health concerns or specific conditions, 
                  it's always a good idea to consult with a healthcare professional before starting a new exercise routine. 
                  Enjoy the process and celebrate each small achievement along the way!" crlf))

(defrule p7
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences no)
      (physicalActivity yes)
      (goal yes)
      =>
      (printout t "Is the user open to creating a caloric deficit for weight loss?")
      (assert (caloricDeficit (read))))

(defrule rule6
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences no)
      (physicalActivity yes)
      (goal no)
      =>
      (printout t "Great! It's wonderful that you're already focused on maintaining a healthy lifestyle. Here are some general guidelines to support your overall well-being:
                  1. Balanced Nutrition - Aim for a well-rounded diet that includes a variety of fruits, vegetables, lean proteins, whole grains, and healthy fats. Remember to stay hydrated by drinking an adequate amount of water throughout the day.
                  2. Regular Physical Activity - Engage in regular physical activity to promote cardiovascular health, muscle strength, and flexibility. Find activities you enjoy, whether it's walking, cycling, dancing, or participating in sports.
                  3. Stress Management - Incorporate stress management techniques into your routine. This could include practices such as mindfulness, meditation, yoga, or deep breathing exercises.
                  4. Emotional Well-being - Take time for activities that bring you joy and relaxation. Connect with friends and loved ones, and prioritize your mental and emotional health.
                  5. Regular Health Check-ups - Schedule regular check-ups with your healthcare provider to monitor your overall health and catch any potential issues early.
                  Remember, maintaining a healthy lifestyle is a holistic approach that goes beyond just weight management. It's about nurturing your body, mind, and spirit. If you have any specific questions or areas you'd like more guidance on, feel free to let us know!" crlf))

(defrule rule7
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences no)
      (physicalActivity yes)
      (goal yes)
      (caloricDeficit yes)
      =>
      (printout t "Great choice on prioritizing your health and wellness journey! 
                  Creating a caloric deficit is a key step for effective weight loss. 
                  Here are some general guidelines to help you achieve your goal:
                  1. Calculate Your Caloric Needs - Determine your Basal Metabolic Rate (BMR) and Total Daily Energy Expenditure (TDEE). This will give you an estimate of the calories you need to consume for weight maintenance.
                  2. Create a Moderate Caloric Deficit - Aim for a gradual reduction in calories, typically 500 to 1,000 calories below your TDEE per day. This can lead to a sustainable and healthy weight loss of about 1-2 pounds per week.
                  3. Prioritize Nutrient-Dense Foods - Focus on whole, nutrient-dense foods such as fruits, vegetables, lean proteins, and whole grains. These foods not only provide essential nutrients but also help you feel full and satisfied.
                  4. Balanced Macronutrient Intake - Ensure a balanced distribution of macronutrients (carbohydrates, proteins, and fats) to meet your nutritional needs. This promotes overall health and supports your weight loss efforts.
                  5. Regular Physical Activity - Combine your dietary changes with regular exercise. A mix of aerobic exercises (like walking, jogging, or cycling) and strength training can enhance your weight loss journey and improve overall fitness.
                  6. Stay Hydrated - Drink plenty of water throughout the day. Sometimes, our bodies can mistake thirst for hunger.
                  7. Monitor Your Progress - Keep a food and exercise journal to track your daily intake and activities. This can help you stay accountable and identify areas for improvement.
                  Remember, it's essential to listen to your body and make gradual, sustainable changes. If you have any specific health concerns or conditions, it's always advisable to consult with a healthcare professional or a registered dietitian for personalized guidance." crlf))

(defrule rule8
      (age yes)
      (weight yes)
      (healthCondition no)
      (dietaryPreferences no)
      (physicalActivity yes)
      (goal yes)
      (caloricDeficit no)
      =>
      (printout t "Absolutely, it's important to prioritize a balanced and sustainable approach to your well-being. While a caloric deficit is a common strategy for weight loss, it's not the only path to a healthy lifestyle. Here are some guidelines for maintaining a balanced diet:
                  1. Focus on Nutrient-Dense Foods: Emphasize a variety of nutrient-dense foods, including fruits, vegetables, whole grains, lean proteins, and healthy fats. These foods provide essential vitamins, minerals, and energy for your body.
                  2. Portion Control: Be mindful of portion sizes to avoid overeating. Listen to your body's hunger and fullness cues, and aim for balanced meals that include a mix of carbohydrates, proteins, and fats.
                  3. Eat Regularly: Establish a regular eating schedule with meals and snacks to maintain steady energy levels throughout the day. Skipping meals can lead to overeating later on.
                  4. Hydrate Adequately: Drink plenty of water throughout the day. Staying hydrated is crucial for overall health and can help regulate appetite.
                  5. Include a Variety of Foods: Don't restrict yourself to specific food groups. Including a variety of foods in your diet ensures you get a broad range of nutrients.
                  6. Moderation, Not Deprivation: Allow yourself occasional treats and indulgences in moderation. Depriving yourself of your favorite foods can make it challenging to maintain a healthy relationship with food.
                  7. Listen to Your Body: Pay attention to how different foods make you feel. Adjust your diet based on what works best for your body and individual preferences.
                  Remember, achieving and maintaining a healthy lifestyle is a unique and personal journey. If you have specific health concerns or dietary needs, consider consulting with a healthcare professional or a registered dietitian for personalized guidance." crlf))

(deffacts startup
      (start))
