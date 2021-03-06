feature 'User can make a move' do

  context 'Classic game' do

    context '1 Player' do
      before(:each) do
        sign_in
      end

      scenario "scissors" do
        click_button 'scissors'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "scissors"
      end

      scenario "paper" do
        click_button 'paper'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "paper"
      end

      scenario "rock" do
        click_button 'rock'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "rock"
      end
    end

    context '2 Players' do
      before(:each) do
        sign_in_2_player
      end

      scenario "scissors" do
        click_button 'scissors'
        click_button 'scissors'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "scissors"
        expect(player_2_move).to have_text "scissors"
      end

      scenario "paper" do
        click_button 'paper'
        click_button 'paper'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "paper"
        expect(player_2_move).to have_text "paper"
      end

      scenario "rock" do
        click_button 'rock'
        click_button 'rock'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "rock"
        expect(player_2_move).to have_text "rock"
      end
    end

  end

  context 'RPSLS game' do
    context '1 Player' do
      before(:each) do
        sign_in_1_player_rpsls
      end

      scenario "scissors" do
        click_button 'scissors'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "scissors"
      end

      scenario "paper" do
        click_button 'paper'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "paper"
      end

      scenario "rock" do
        click_button 'rock'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "rock"
      end

      scenario "spock" do
        click_button 'spock'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "spock"
      end

      scenario "lizard" do
        click_button 'lizard'
        player_1_move = find_by_id('player_1_move')
        expect(player_1_move).to have_text "lizard"
      end
    end

    context '2 Players' do
      before(:each) do
        sign_in_2_player_rpsls
      end

      scenario "scissors" do
        click_button 'scissors'
        click_button 'scissors'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "scissors"
        expect(player_2_move).to have_text "scissors"
      end

      scenario "paper" do
        click_button 'paper'
        click_button 'paper'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "paper"
        expect(player_2_move).to have_text "paper"
      end

      scenario "rock" do
        click_button 'rock'
        click_button 'rock'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "rock"
        expect(player_2_move).to have_text "rock"
      end

      scenario "spock" do
        click_button 'spock'
        click_button 'spock'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "spock"
        expect(player_2_move).to have_text "spock"
      end

      scenario "lizard" do
        click_button 'lizard'
        click_button 'lizard'
        player_1_move = find_by_id('player_1_move')
        player_2_move = find_by_id('player_2_move')
        expect(player_1_move).to have_text "lizard"
        expect(player_2_move).to have_text "lizard"
      end
    end

  end

end
