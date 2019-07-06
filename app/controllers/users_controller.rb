class UsersController < ApplicationController

  before_action :set_user, only: [:show, :vote, :result, :reset]
  before_action :takuman_only, only: [:index]

  def index
    @title = "ユーザー一覧"
    @users = User.all.order(created_at: :desc).take(100)
    @users_count = User.all.count
  end

  def show
    @url = request.url
  end

  def vote
    vote_id = params[:vote_id]
    @user.update(status01:@user.status01+1) if vote_id == "01"
    @user.update(status02:@user.status02+1) if vote_id == "02"
    @user.update(status03:@user.status03+1) if vote_id == "03"
    @user.update(status04:@user.status04+1) if vote_id == "04"
    @user.update(status05:@user.status05+1) if vote_id == "05"
    @user.update(status06:@user.status06+1) if vote_id == "06"
    @user.update(status07:@user.status07+1) if vote_id == "07"
    @user.update(status08:@user.status08+1) if vote_id == "08"
    @user.update(status09:@user.status09+1) if vote_id == "09"
    @user.update(status10:@user.status10+1) if vote_id == "10"
    @user.update(status11:@user.status11+1) if vote_id == "11"
    @user.update(status12:@user.status12+1) if vote_id == "12"
    @user.update(status13:@user.status13+1) if vote_id == "13"
    @user.update(status14:@user.status14+1) if vote_id == "14"
    @user.update(status15:@user.status15+1) if vote_id == "15"
    @user.update(status16:@user.status16+1) if vote_id == "16"
    @user.update(status17:@user.status17+1) if vote_id == "17"
    @user.update(status18:@user.status18+1) if vote_id == "18"
    @user.update(status19:@user.status19+1) if vote_id == "19"
    @user.update(status20:@user.status20+1) if vote_id == "20"
    flash[:success] = "投票しました"
    redirect_to result_path(@user.id)
  end


  def result

    # 合計投票数
    @sum = @user.status01.to_i + @user.status02.to_i + @user.status03.to_i + @user.status04.to_i + @user.status05.to_i + @user.status06.to_i + @user.status07.to_i + @user.status08.to_i + @user.status09.to_i + @user.status10.to_i + @user.status11.to_i + @user.status12.to_i + @user.status13.to_i + @user.status14.to_i + @user.status15.to_i + @user.status16.to_i + @user.status17.to_i + @user.status18.to_i + @user.status19.to_i + @user.status20.to_i

    # 各性格特性のパーセンテージ
    @s01 = @sum.to_i > 0 ? @user.status01.to_i / @sum.to_i.to_f * 100 : 0
    @s02 = @sum.to_i > 0 ? @user.status02.to_i / @sum.to_i.to_f * 100 : 0
    @s03 = @sum.to_i > 0 ? @user.status03.to_i / @sum.to_i.to_f * 100 : 0
    @s04 = @sum.to_i > 0 ? @user.status04.to_i / @sum.to_i.to_f * 100 : 0
    @s05 = @sum.to_i > 0 ? @user.status05.to_i / @sum.to_i.to_f * 100 : 0
    @s06 = @sum.to_i > 0 ? @user.status06.to_i / @sum.to_i.to_f * 100 : 0
    @s07 = @sum.to_i > 0 ? @user.status07.to_i / @sum.to_i.to_f * 100 : 0
    @s08 = @sum.to_i > 0 ? @user.status08.to_i / @sum.to_i.to_f * 100 : 0
    @s09 = @sum.to_i > 0 ? @user.status09.to_i / @sum.to_i.to_f * 100 : 0
    @s10 = @sum.to_i > 0 ? @user.status10.to_i / @sum.to_i.to_f * 100 : 0
    @s11 = @sum.to_i > 0 ? @user.status11.to_i / @sum.to_i.to_f * 100 : 0
    @s12 = @sum.to_i > 0 ? @user.status12.to_i / @sum.to_i.to_f * 100 : 0
    @s13 = @sum.to_i > 0 ? @user.status13.to_i / @sum.to_i.to_f * 100 : 0
    @s14 = @sum.to_i > 0 ? @user.status14.to_i / @sum.to_i.to_f * 100 : 0
    @s15 = @sum.to_i > 0 ? @user.status15.to_i / @sum.to_i.to_f * 100 : 0
    @s16 = @sum.to_i > 0 ? @user.status16.to_i / @sum.to_i.to_f * 100 : 0
    @s17 = @sum.to_i > 0 ? @user.status17.to_i / @sum.to_i.to_f * 100 : 0
    @s18 = @sum.to_i > 0 ? @user.status18.to_i / @sum.to_i.to_f * 100 : 0
    @s19 = @sum.to_i > 0 ? @user.status19.to_i / @sum.to_i.to_f * 100 : 0
    @s20 = @sum.to_i > 0 ? @user.status20.to_i / @sum.to_i.to_f * 100 : 0

    # 0.0%と表示されるところを0に修正する
    @s01 = 0 if @s01 == 0.0
    @s02 = 0 if @s02 == 0.0
    @s03 = 0 if @s03 == 0.0
    @s04 = 0 if @s04 == 0.0
    @s05 = 0 if @s05 == 0.0
    @s06 = 0 if @s06 == 0.0
    @s07 = 0 if @s07 == 0.0
    @s08 = 0 if @s08 == 0.0
    @s09 = 0 if @s09 == 0.0
    @s10 = 0 if @s10 == 0.0
    @s11 = 0 if @s11 == 0.0
    @s12 = 0 if @s12 == 0.0
    @s13 = 0 if @s13 == 0.0
    @s14 = 0 if @s14 == 0.0
    @s15 = 0 if @s15 == 0.0
    @s16 = 0 if @s16 == 0.0
    @s17 = 0 if @s17 == 0.0
    @s18 = 0 if @s18 == 0.0
    @s19 = 0 if @s19 == 0.0
    @s20 = 0 if @s20 == 0.0

  end

  def reset
    @user.update(status01:0, status02:0, status03:0, status04:0, status05:0, status06:0, status07:0, status08:0, status09:0, status10:0, status11:0, status12:0, status13:0, status14:0, status15:0, status16:0, status17:0, status18:0, status19:0, status20:0)
    flash[:success] = "投票結果をリセットしました"
    redirect_to result_path(@user.id)
  end

  private
    def set_user
      @user = User.find_by(id: params[:id])
    end

    def takuman_only
      if not current_user.id == 1
        flash[:notice] = "権限がありません。"
        redirect_to user_path(current_user.id)
      end
    end

end
